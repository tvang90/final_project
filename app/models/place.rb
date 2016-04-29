class Place < ActiveRecord::Base
	has_many :reviews
	belongs_to :category

	validates_presence_of :name
	validates_presence_of :description
	validates_presence_of :city
	validates_presence_of :state

	geocoded_by :full_address
	after_validation :geocode

	def full_address
		[address1, address2, city, state, zipcode].join(',')
	end

	def self.search(params)
		places = Place.where(category_id: params[:category].to_i)
		places = Place.where("name like ? or decription like ?", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?
		places = Place.near(params[:place], 10) if params[:place].present?
		places
	end
end

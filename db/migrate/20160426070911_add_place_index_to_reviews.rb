class AddPlaceIndexToReviews < ActiveRecord::Migration
  def change
  	add_reference :reviews, :place, index: true
  end
end

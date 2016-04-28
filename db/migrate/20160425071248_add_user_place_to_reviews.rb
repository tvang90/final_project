class AddUserPlaceToReviews < ActiveRecord::Migration
  def change
  	add_reference :reviews, :places, index: true
  	add_reference :reviews, :user, index: true

  end
end

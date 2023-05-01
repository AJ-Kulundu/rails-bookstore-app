class ChangeRatingDefaultInReview < ActiveRecord::Migration[7.0]
  def change
    change_column_default :reviews, :rating, from: nil, to: 5
  end
end

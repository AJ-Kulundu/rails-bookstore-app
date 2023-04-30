class ReviewsController < ApplicationController
  def create
    console
    @book = Book.find(params[:book_id])
    @review = @book.reviews.create(review_params)
  end

  private
    def review_params
      params.require(:review).permit(:review, :rating).merge(user:current_user)
    end
end

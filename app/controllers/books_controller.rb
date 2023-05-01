class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index,:show]
  def show
    @book = Book.joins(:author,:reviews, reviews: :user).find(params[:id])
  end
end

class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @books = Book.includes(:author).all
  end
end

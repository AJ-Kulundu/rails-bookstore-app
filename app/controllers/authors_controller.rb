class AuthorsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index,:show]
    def index
        @authors = Author.all
    end
    def show
        @author = Author.find(params[:id])
    end
end

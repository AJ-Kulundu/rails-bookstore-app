class AuthorsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index,:show]
    before_action :check_admin, except: [:index,:show]
    def index
        @authors = Author.all
    end
    def show
        @author = Author.find(params[:id])
    end
    def new
        @author = Author.new
    end 

    private

    def check_admin
        unless current_user.admin?
            redirect_to root_path, alert: "You are not authorized to perform this action."
        end
    end
end

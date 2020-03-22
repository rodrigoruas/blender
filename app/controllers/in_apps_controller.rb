class InAppsController < ApplicationController
    before_action :set_in_app, only: [:show]
    def index
        @in_apps = current_user.in_apps
    end

    def show
    end

    def new
        @in_app = InApp.new
    end
    
    def create
        @in_app = InApp.new(in_app_params)     
        @in_app.user = current_user
        #need the type
        if @in_app.save
           redirect_to in_app_path(@in_app)
        else 
            render :new    
        end
    end

    private
    def set_in_app
        @in_app = InApp.find(params[:id])
    end

    def in_app_params
        params.require(:in_app).permit(:name, :title, :description, :content, :image)
    end
end

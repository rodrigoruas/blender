class InAppsController < ApplicationController
    before_action :set_in_app, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!
    skip_before_action :verify_authenticity_token, only: [:change_type]
        
    def index
        @in_apps = current_user.in_apps
    end

    def show
    end

    def edit
    end

    def new
        @in_app = InApp.new(default_values)
        if current_user.types.empty?
            redirect_to new_type_path, warning: 'You need to create a template first.'
        else
            @in_app.type = current_user.types.last
        end
    end
    
    def create
        @in_app = InApp.new(in_app_params)     
        @in_app.user = current_user
        if @in_app.save
            redirect_to in_app_path(@in_app)
        else 
            render :new    
        end
    end

    def update
        respond_to do |format|
            if @in_app.update(in_app_params)
                redirect_to @in_app, notice: 'InApp was successfully updated.'
            else
                render :edit
            end 
        end
    end

    def destroy
        @in_app.destroy
        redirect_to in_apps_url, notice: 'InApp was successfully destroyed.'
    end

    def change_type
        @in_app = InApp.new(in_app_params)
    end

    private
    def set_in_app
        @in_app = InApp.find(params[:id])
    end

    def in_app_params
        params.require(:in_app).permit(:name, :title, :description, :content, :image, :type_id)
    end

    def default_values
        {
            title: "Title",
            content: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Rofficia asperiores aperiam quae voluptatem."
        }
    end
end
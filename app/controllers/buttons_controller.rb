class ButtonsController < ApplicationController
    before_action :set_button, only: [:show, :edit, :update, :destroy]
    def new
        @button = Button.new
    end

    def create
        @button = Button.new(button_params)
        @in_app = InApp.find(params[:in_app_id])
        @button.in_app = @in_app
        if @button.save
            redirect_to in_app_path(@in_app)
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @button.update
            redirect_to in_app_path(@in_app)
        else
            render :edit
        end
    end

    def destroy
        @button.destroy
        redirect_to in_app_path(@in_app)
    end

    private
    def set_button
        @button = Button.find(params[:id])
    end

    def button_params
        params.require(:button).permit(:content, :link, :fill_color, :border_color)
    end

end

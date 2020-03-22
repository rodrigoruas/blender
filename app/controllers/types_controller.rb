class TypesController < ApplicationController
    before_action :set_type, only: [:show, :edit, :update, :destroy]
    def index
        @types = current_user.types
    end

    def show
    end
    def new
        @type = Type.new
    end

    def create
        @type = Type.new(type_params)
        @type.user = current_user
        if @type.save
            redirect_to types_path
        else
            render :new
        end
    end

    private
    
    def set_type 
        @type = Type.find(params[:id])
    end

    def type_params
        params.require(:type).permit(
            :title_margin_top, :title_font_family, :title_font_size, 
            :title_font_color, :title_line_height, :title_text_align, 
            :content_margin_top, :content_font_family, :content_font_size, 
            :content_font_color, :content_line_height, :content_text_align, 
            :content_margin_bottom, :button_font_family, :button_font_size, 
            :button_font_color, :button_letter_spacing, :modal_radius, 
            :header_height, :bottom_padding_top, :bottom_padding_right, 
            :bottom_padding_bottom, :bottom_padding_left, :bottom_background_color, 
            :close_circle_width, :close_cross_width, :close_cross_thickness)
    end
end

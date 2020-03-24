class TypesController < ApplicationController
    before_action :set_type, only: [:show, :edit, :update, :destroy]
    def index
        @types = current_user.types
    end

    def show
    end

    def edit
    end

    def new
        @type = Type.new(default_values)
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
    
    def update
        respond_to do |format|
            if @type.update(type_params)
                redirect_to @type, notice: 'Type was successfully updated.'
            else
                render :edit
            end 
        end
    end

    def destroy
        @type.destroy
        redirect_to types_url, notice: 'Type was successfully destroyed.'
        
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

    def default_values 
        {
            title_margin_top: "10px",
            title_font_family: "Roboto, sans-serif",
            title_font_size: "24px",
            title_font_color: "white",
            title_line_height: "1.2rem",
            title_text_align: "center",
            content_margin_top: "10px",
            content_margin_bottom: "10px",
            content_font_family: "Roboto, sans-serif",
            content_font_size: "14px",
            content_font_color: "white",
            content_line_height: "1rem",
            content_text_align: "center",
            button_font_family: "",
            button_font_size: "12px",
            button_font_color: "blue",
            button_letter_spacing: "",
            modal_radius: "20px",
            header_height: "50%",
            bottom_padding_top: "10px",
            bottom_padding_right: "10px",
            bottom_padding_bottom: "10px",
            bottom_padding_left: "10px",
            bottom_background_color: "#eeeeee",
            close_circle_width: "30px",
            close_cross_width: "15px",
            close_cross_thickness: "3px"
        }
    end
end

user = User.first

type1 = Type.create(user: user)
type2 = Type.create(user: user)
type3 = Type.create(user: user)

InApp.create!(user: user, type: type1, name: "Demo InApp 1", description: "This is my new InApp", title: "Title InApp 1", content: "  Lorem ipsum dolor, sit amet consectetur adipisicing elit. Temporibus nemo, quo sunt odio recusandae rerum nesciunt magnam placeat fugiat modi optio quisquam, praesentium facere nostrum debitis deleniti cupiditate minus reprehenderit.")
InApp.create!(user: user, type: type2, name: "Demo InApp 2", description: "That's the second one", title: "Title InApp 2", content: "  Lorem ipsum dolor, sit amet consectetur adipisicing elit. Temporibus nemo, quo sunt odio recusandae rerum nesciunt magnam placeat fugiat modi optio quisquam, praesentium facere nostrum debitis deleniti cupiditate minus reprehenderit.")
InApp.create!(user: user, type: type3, name: "Demo InApp 3", description: "And the third", title: "I don't have a title", content: "  Lorem ipsum dolor, sit amet consectetur adipisicing elit. Temporibus nemo, quo sunt odio recusandae rerum nesciunt magnam placeat fugiat modi optio quisquam, praesentium facere nostrum debitis deleniti cupiditate minus reprehenderit.")

Button.create(content: "Click here", link: "#", fill_color: "blue", border_color: "transparent", in_app: InApp.first)
Button.create(content: "Button", link: "#", fill_color: "red", border_color: "transparent", in_app: InApp.first)
Button.create(content: "Btn", link: "#", fill_color: "green", border_color: "transparent", in_app: InApp.last)

Type.create(user: User.first, 
  title_margin_top: "10px",
  title_font_family: "",
  title_font_size: "16px",
  title_font_color: "red",
  title_line_height: "1rem",
  title_text_align: "center",
  content_margin_top: "0",
  content_font_family: "",
  content_font_size: "10px",
  content_font_color: "black",
  content_line_height: "16px",
  content_text_align: "left",
  content_margin_bottom: "5px",
  button_font_family: "",
  button_font_size: "12px",
  button_font_color: "blue",
  button_letter_spacing: "",
  modal_radius: "",
  header_height: "50%",
  bottom_padding_top: "0",
  bottom_padding_right: "0",
  bottom_padding_bottom: "0",
  bottom_padding_left: "0",
  bottom_background_color: "green",
  close_circle_width: "10px",
  close_cross_width: "8px",
  close_cross_thickness: "2")


  default_values = {
    title_margin_top: "10px",
    title_font_family: "Arial, Helvetica, sans-serif",
    title_font_size: "24px",
    title_font_color: "white",
    title_line_height: "1.2rem",
    title_text_align: "center",
    content_margin_top: "10px",
    content_margin_bottom: "10px",
    content_font_family: "Arial, Helvetica, sans-serif",
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
    close_circle_width: "10px",
    close_cross_width: "8px",
    close_cross_thickness: "2"
  }
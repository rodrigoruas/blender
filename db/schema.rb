# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_21_155426) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buttons", force: :cascade do |t|
    t.string "content"
    t.string "link"
    t.string "fill_color"
    t.string "border_color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "in_app_id"
    t.index ["in_app_id"], name: "index_buttons_on_in_app_id"
  end

  create_table "in_apps", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "title"
    t.string "content"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.bigint "type_id"
    t.index ["type_id"], name: "index_in_apps_on_type_id"
    t.index ["user_id"], name: "index_in_apps_on_user_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "title_margin_top"
    t.string "title_font_family"
    t.string "title_font_size"
    t.string "title_font_color"
    t.string "title_line_height"
    t.string "title_text_align"
    t.string "content_margin_top"
    t.string "content_font_family"
    t.string "content_font_size"
    t.string "content_font_color"
    t.string "content_line_height"
    t.string "content_text_align"
    t.string "content_margin_bottom"
    t.string "button_font_family"
    t.string "button_font_size"
    t.string "button_font_color"
    t.string "button_letter_spacing"
    t.string "modal_radius"
    t.string "header_height"
    t.string "bottom_padding_top"
    t.string "bottom_padding_right"
    t.string "bottom_padding_bottom"
    t.string "bottom_padding_left"
    t.string "bottom_background_color"
    t.string "close_circle_width"
    t.string "close_cross_width"
    t.string "close_cross_thickness"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_types_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "company"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "buttons", "in_apps"
  add_foreign_key "in_apps", "types"
  add_foreign_key "in_apps", "users"
  add_foreign_key "types", "users"
end

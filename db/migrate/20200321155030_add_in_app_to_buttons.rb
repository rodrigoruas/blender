class AddInAppToButtons < ActiveRecord::Migration[6.0]
  def change
    add_reference :buttons, :in_app, foreign_key: true
  end
end

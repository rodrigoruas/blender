class AddUserToTypes < ActiveRecord::Migration[6.0]
  def change
    add_reference :types, :user, foreign_key: true
  end
end

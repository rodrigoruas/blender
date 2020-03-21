class AddTypeAndUserToInApps < ActiveRecord::Migration[6.0]
  def change
    add_reference :in_apps, :user, foreign_key: true
    add_reference :in_apps, :type, foreign_key: true
  end
end

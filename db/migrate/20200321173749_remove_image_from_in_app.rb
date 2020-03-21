class RemoveImageFromInApp < ActiveRecord::Migration[6.0]
  def change
    remove_column :in_apps, :image
  end
end

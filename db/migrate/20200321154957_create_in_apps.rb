class CreateInApps < ActiveRecord::Migration[6.0]
  def change
    create_table :in_apps do |t|
      t.string :name
      t.string :description
      t.string :title
      t.string :content
      t.string :image
      t.timestamps
    end
  end
end

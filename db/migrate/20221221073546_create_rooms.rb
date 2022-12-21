class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.string :category
      t.text :description
      t.integer :size
      t.float :price
      t.string :image_url

      t.timestamps
    end
  end
end

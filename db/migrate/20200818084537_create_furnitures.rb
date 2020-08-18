class CreateFurnitures < ActiveRecord::Migration[6.0]
  def change
    create_table :furnitures do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.integer :number_items
      t.string :furniture_type
      t.string :zipcode
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

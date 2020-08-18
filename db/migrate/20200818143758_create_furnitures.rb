class CreateFurnitures < ActiveRecord::Migration[6.0]
  def change
    create_table :furnitures do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.references :user, null: false, foreign_key: true
      t.integer :number_items
      t.string :furniture_type
      t.integer :zipcode

      t.timestamps
    end
  end
end

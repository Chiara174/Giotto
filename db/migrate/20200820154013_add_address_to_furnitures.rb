class AddAddressToFurnitures < ActiveRecord::Migration[6.0]
  def change
    add_column :furnitures, :address, :string
    add_column :furnitures, :latitude, :float
    add_column :furnitures, :longitude, :float
  end
end

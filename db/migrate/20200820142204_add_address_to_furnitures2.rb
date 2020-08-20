class AddAddressToFurnitures2 < ActiveRecord::Migration[6.0]
  def change
    add_column :furnitures, :address, :string
  end
end

class AddInfoToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :brand, :string
    add_column :cars, :power, :string
    add_column :cars, :fuel_type, :string
  end
end

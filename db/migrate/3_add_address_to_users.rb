class AddAddressToUsers < ActiveRecord::Migration
  def change
    remove_columns :users, :state, :city, :commune, :neighborhood
    add_column :users, :address, :string
    add_column :users, :state_id, :integer
    add_column :users, :city_id, :integer
    add_column :users, :commune_id, :integer
    add_column :users, :neighborhood_id, :integer
  end
end
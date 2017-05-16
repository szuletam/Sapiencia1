class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birthdate, :date
    add_column :users, :job, :string
    add_column :users, :state, :string
    add_column :users, :city, :string
    add_column :users, :commune, :string
    add_column :users, :neighborhood, :string
  end
end
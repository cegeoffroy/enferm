class AddAttributesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :full_name, :string
    add_column :users, :avatar, :string
    add_column :users, :admin, :boolean, null: false, default: false
    add_column :users, :phone_number, :string
    add_column :users, :medical_id, :string
  end
end

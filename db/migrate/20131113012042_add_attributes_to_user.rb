class AddAttributesToUser < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :info, :string
    add_column :users, :remember_token, :string
  end
end
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :facebook_key
      t.string :twitter_key
      t.string :google_key
      t.string :flickr_key

      t.timestamps
    end
  end
end

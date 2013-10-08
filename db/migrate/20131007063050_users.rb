class Users < ActiveRecord::Migration
  def up
  create_table :users do |u|
    u.string :user_id
    u.string :email
    u.string :session_token
    u.timestamps
  
  end
end

  def down
	drop_table :users
  end
end

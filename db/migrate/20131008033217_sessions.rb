class Sessions < ActiveRecord::Migration
  def up
	create_table :sessions do |u|
	 u.string :session_token
	end
  end

  def down
	drop_table :sessions
  end
end

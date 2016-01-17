class AddUsernameToUsers < ActiveRecord::Migration
  def change # Anything inside this method is translated into SQL code and modified the database (currently, SQL light)
    add_column :users, :username, :string # add a new column to table "users" called "username" and of type "string"
    add_index :users, :username, unique: true # First, index usernames for quick rapid lookup time. Second, ensure usernames are ALWAYS unique.
  end
end

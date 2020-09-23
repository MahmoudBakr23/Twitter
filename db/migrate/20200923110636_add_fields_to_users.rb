class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :username, :string, :limit => 25, :after => "name"
    add_index :users, :username, :unique => true
  end
end

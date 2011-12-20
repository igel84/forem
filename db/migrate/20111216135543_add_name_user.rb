class AddNameUser < ActiveRecord::Migration
  def up
  	add_column :forem_users, :name, :string, :default=>''
  end

  def down
  	remove_column :forem_users, :name
  end
end

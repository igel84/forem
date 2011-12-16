class AddForemAdmin < ActiveRecord::Migration

  def change
    add_column :forem_users, :forem_admin, :boolean, :default => false
  end
end

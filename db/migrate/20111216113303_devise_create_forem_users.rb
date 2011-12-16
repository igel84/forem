class DeviseCreateForemUsers < ActiveRecord::Migration
  def change
    create_table(:forem_users) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      # t.encryptable
      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    add_index :forem_users, :email,                :unique => true
    add_index :forem_users, :reset_password_token, :unique => true
    # add_index :forem_users, :confirmation_token,   :unique => true
    # add_index :forem_users, :unlock_token,         :unique => true
    # add_index :forem_users, :authentication_token, :unique => true
  end

end

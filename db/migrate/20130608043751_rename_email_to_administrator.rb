class RenameEmailToAdministrator < ActiveRecord::Migration
  def up
    rename_column :administrators, :email, :admin_email
    rename_column :administrators, :password_hash, :admin_password_hash
    rename_column :administrators, :password_salt, :admin_password_salt
  end

  def down
    rename_column :administrators, :admin_email, :email
    rename_column :administrators, :admin_password_hash, :password_hash
    rename_column :administrators, :admin_password_salt, :password_salt
  end
end

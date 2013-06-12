class AddadminRememberTokenToAdministrators < ActiveRecord::Migration
  def up
    add_column :administrators, :admin_remember_token, :string
    add_index  :administrators, :admin_remember_token
  end

  def down
  end
end

class RenameNameToAdministrator < ActiveRecord::Migration
  def up
    rename_column :administrators, :name, :admin_name
  end

  def down
    rename_column :administrators, :admin_name, :name
  end
end

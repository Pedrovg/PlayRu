class RemoveNameFromRoles < ActiveRecord::Migration[5.2]
  def change
    remove_column :roles, :name
  end
end

class AddTypeStringToRoles < ActiveRecord::Migration[5.2]
  def change
    add_column :roles, :type, :string
  end
end

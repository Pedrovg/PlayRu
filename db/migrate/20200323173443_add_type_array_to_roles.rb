class AddTypeArrayToRoles < ActiveRecord::Migration[5.2]
  def change
    add_column :roles, :type, :string, array: true, default: ["The brains", "The muscle", "The specialist"]
  end
end

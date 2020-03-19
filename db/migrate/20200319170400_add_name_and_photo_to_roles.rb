class AddNameAndPhotoToRoles < ActiveRecord::Migration[5.2]
  def change
    add_column :roles, :name, :string
    add_column :roles, :photo, :string
  end
end

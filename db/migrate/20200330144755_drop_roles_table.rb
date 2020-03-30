class DropRolesTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :roles, force: :cascade
  end
end

class AddRoleIdToGoals < ActiveRecord::Migration[5.2]
  def change
    add_reference :goals, :role, foreign_key: true
  end
end

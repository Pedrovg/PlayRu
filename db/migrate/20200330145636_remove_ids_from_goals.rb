class RemoveIdsFromGoals < ActiveRecord::Migration[5.2]
  def change
    remove_column :goals, :role_id
    remove_column :goals, :dificulty_id
  end
end

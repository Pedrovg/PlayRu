class AddNameToGoals < ActiveRecord::Migration[5.2]
  def change
    add_column :goals, :name, :string
  end
end

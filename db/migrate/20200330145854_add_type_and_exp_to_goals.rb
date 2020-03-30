class AddTypeAndExpToGoals < ActiveRecord::Migration[5.2]
  def change
    add_column :goals, :type, :string
    add_column :goals, :exp, :integer
  end
end

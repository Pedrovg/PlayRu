class AddDificultyIdToGoals < ActiveRecord::Migration[5.2]
  def change
    add_reference :goals, :dificulty, foreign_key: true
  end
end

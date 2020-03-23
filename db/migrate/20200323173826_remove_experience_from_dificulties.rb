class RemoveExperienceFromDificulties < ActiveRecord::Migration[5.2]
  def change
    remove_column :dificulties, :experience
  end
end

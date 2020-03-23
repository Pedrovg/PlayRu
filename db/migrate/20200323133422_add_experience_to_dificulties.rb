class AddExperienceToDificulties < ActiveRecord::Migration[5.2]
  def change
    add_column :dificulties, :experience, :integer
  end
end

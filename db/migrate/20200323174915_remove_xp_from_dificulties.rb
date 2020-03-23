class RemoveXpFromDificulties < ActiveRecord::Migration[5.2]
  def change
    remove_column :dificulties, :xp
  end
end

class AddXpToDificulties < ActiveRecord::Migration[5.2]
  def change
    add_column :dificulties, :xp, :integer, array: true, default: [5, 20, 50]
  end
end

class AddExpToDificulties < ActiveRecord::Migration[5.2]
  def change
    add_column :dificulties, :exp, :integer
  end
end

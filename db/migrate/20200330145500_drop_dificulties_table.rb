class DropDificultiesTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :dificulties, force: :cascade
  end
end

class CreateDificulties < ActiveRecord::Migration[5.2]
  def change
    create_table :dificulties do |t|

      t.timestamps
    end
  end
end

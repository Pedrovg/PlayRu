class AddExpBarToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :exp_bar, :integer, default: 0
  end
end

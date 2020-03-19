class AddUserIdToGoals < ActiveRecord::Migration[5.2]
  def change
    add_reference :goals, :user, index: true
  end
end

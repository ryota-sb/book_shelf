class AddObjectiveToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :objective, :string
  end
end

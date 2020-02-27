class AddContinueToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :continue_count, :integer
  end
end

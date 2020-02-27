class RemoveContinueCountToUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :continue_count, :integer
  end
end

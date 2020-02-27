class RemoveIndexToComments < ActiveRecord::Migration[6.0]
  def change
    remove_index :comments, [:user_id, :book_id]
  end
end

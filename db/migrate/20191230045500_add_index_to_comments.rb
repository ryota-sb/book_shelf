class AddIndexToComments < ActiveRecord::Migration[6.0]
  def change
    add_index :comments, :user_id
    add_index :comments, :book_id
    add_index :comments, [:user_id, :book_id], unique: true
  end
end

class RemaneImageToBooks < ActiveRecord::Migration[6.0]
  def change
    rename_column :books, :book_image, :image
  end
end

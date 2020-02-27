module BooksHelper
  def current_user_book?(book)
    book.user_id == current_user.id
  end
end
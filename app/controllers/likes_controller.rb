class LikesController < ApplicationController

  def user_show
    @book = Book.find_by(id: params[:id])
    @likes = Like.where(book_id: @book.id)
  end

  def book_show
    @user = User.find_by(id: params[:id])
    @likes = Like.where(user_id: @user.id)
  end

  def create
    @book = Book.find(params[:book_id])
    @book.like(current_user)
  end

  def destroy
    @book = Like.find(params[:id]).book
    @book.unlike(current_user)
  end
end
class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  before_action :other_books, only: [:edit, :update, :destroy]

  def index
    @books = Book.all
  end

  def show
    @comment = Comment.new
    @comments = @book.comments
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      flash[:success] = '本棚に追加しました'
      redirect_to user_url(current_user)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @book.update_attributes(book_params)
      redirect_to book_url(current_user)
    else
      render 'edit'
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to user_url(current_user)
  end

  def search
    @books = Book.search(params[:search])
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def other_books
    if @book.user.id != current_user.id
      flash[:danger] = '自分の本ではありません！'
      redirect_to user_url(current_user)
    end
  end

  def book_params
    params.require(:book).permit(:title, :content, :image)
  end
end

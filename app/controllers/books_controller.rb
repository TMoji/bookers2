class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      flash[:notice] = "You have created book successfully."
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      @user = current_user
      render'books/index'
    end
  end

  def index
    @books = Book.all
    @user = current_user
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
    @user = @book.user
    @user = current_user
  end
  
  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if@book.update(book_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to book_path(@book.id)
    else
      render:edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path

  end
  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end

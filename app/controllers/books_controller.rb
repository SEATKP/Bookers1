class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    @books = Book.all
      if @book.save
        redirect_to book_path(@book.id)
      else
        render :index
      end
    flash[:notice] = "Book was successfully created."
  end

  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @books = Book.all
      if @book.update(book_params)
          redirect_to book_path(@book.id)
      else
          render :edit
      end

    flash[:notice] = "Book was successfully updated."
    # book = Book.find(params[:id])
    # book.update(book_params)
    # flash[:notice] = "Book was successfully updated."
    # redirect_to book_path(book.id)
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
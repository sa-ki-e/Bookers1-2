class BooksController < ApplicationController
  def new
    @new_book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
  if @book.save
      redirect_to book_path(@book.id), flash[:notice] = "Book was successfully created."
    else 
     render :index
    end
  end

  def index
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
end

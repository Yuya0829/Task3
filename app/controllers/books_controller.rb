class BooksController < ApplicationController

  def create
    @book = Book.new(_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

end

class BorrowingsController < ApplicationController

  def create
    borrowing = Borrowing.new(
      book_id: params[:book_id],
      borrower_id: params[:borrower_id]
    )

    book = Book.find(params[:book_id])

    if book.available
      borrowing.save
      book.update(available: false)
      redirect_to books_path
    else
      render plain: "Book not available"
    end
  end

end
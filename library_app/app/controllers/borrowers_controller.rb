class BorrowersController < ApplicationController

  def index
    @borrowers = Borrower.all
  end

  def new
    @borrower = Borrower.new
  end

  def create
    @borrower = Borrower.new(params.require(:borrower).permit(:name, :email))
    @borrower.save
    redirect_to borrowers_path
  end

  def edit
    @borrower = Borrower.find(params[:id])
  end

  def update
    @borrower = Borrower.find(params[:id])
    @borrower.update(params.require(:borrower).permit(:name, :email))
    redirect_to borrowers_path
  end

  def destroy
    @borrower = Borrower.find(params[:id])
    @borrower.destroy
    redirect_to borrowers_path
  end

end
class Book < ApplicationRecord
  validates :title, presence: true,length: { maximum: 50 }
  validates :body, presence: true,length: { maximum: 140 }

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book.id)
    else
      render :index
    end
  end
end

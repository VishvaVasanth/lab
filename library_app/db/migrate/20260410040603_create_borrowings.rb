class CreateBorrowings < ActiveRecord::Migration[8.1]
  def change
    create_table :borrowings do |t|
      t.references :book, null: false, foreign_key: true
      t.references :borrower, null: false, foreign_key: true

      t.timestamps
    end
  end
end

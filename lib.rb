class Book
  attr_accessor :title, :author, :isbn, :available

  def initialize(title, author, isbn)
    @title = title
    @author = author
    @isbn = isbn
    @available = true
  end
end

class Library
  def initialize
    @books = []
  end

  # ➕ Add Book
  def add
    print "Enter the title: "
    title = gets.chomp

    print "Enter the author: "
    author = gets.chomp

    print "Enter the isbn: "
    isbn = gets.chomp

    if @books.any? { |b| b.isbn == isbn }
      puts "❌ ISBN already used"
    else
      @books << Book.new(title, author, isbn)
      puts "✅ Created successfully"
    end
  end

  # 📚 Display
  def display
    if @books.empty?
      puts "No book available"
    else
      @books.each do |b|
        status = b.available ? "AVAILABLE" : "BORROWED"
        puts "#{b.title} | #{b.author} | #{status}"
      end
    end
  end

  # 📥 Borrow
  def borrow
    print "Enter ISBN: "
    isbn = gets.chomp

    book = @books.find { |b| b.isbn == isbn }

    if book.nil?
      puts "❌ Book not found"
    elsif !book.available
      puts "❌ Already borrowed"
    else
      book.available = false
      puts "✅ Book borrowed successfully"
    end
  end

  # 📤 Return
  def return_book
    print "Enter ISBN: "
    isbn = gets.chomp

    book = @books.find { |b| b.isbn == isbn }

    if book.nil?
      puts "❌ Book not found"
    elsif book.available
      puts "❌ Book was not borrowed"
    else
      book.available = true
      puts "✅ Book returned successfully"
    end
  end
end

# ▶️ MAIN
library = Library.new

loop do
  puts "\n===== 📖 Library Menu ====="
  puts "1. Add Book"
  puts "2. Display Books"
  puts "3. Borrow Book"
  puts "4. Return Book"
  puts "5. Exit"
  print "Choose option: "

  choice = gets.chomp.to_i

  case choice
  when 1
    library.add
  when 2
    library.display
  when 3
    library.borrow
  when 4
    library.return_book
  when 5
    puts "👋 Exiting..."
    break
  else
    puts "❌ Invalid choice"
  end
end
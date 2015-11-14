module BooksHelper
  def book_cover(book, options = {})
    image_tag(book.cover_image_url, id: "book-#{book.id}", **options)
  end
end

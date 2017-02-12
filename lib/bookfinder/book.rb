module BookFinder
  class Book
    attr_reader :title, :authors, :page_count, :description, :image_urls

    def initialize(options = {})
      @title = options['title']
      @authors = options['authors']
      @page_count = options['pageCount']
      @description = options['description']
      @image_urls = options['imageLinks']
      @published_date = options['publishedDate']
    end
  end
end

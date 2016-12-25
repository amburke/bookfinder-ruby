module BookFinder
  class Book
    attr_reader :title, :author, :page_count, :description, :image_urls

    def initialize(options = {})
      @title = options['title']
      @authors = options['authors']
      @page_count = options['pageCount']
      @description = options['description']
      @image_urls = options['imageLinks']
    end
  end
end

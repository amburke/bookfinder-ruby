# Bookfinder

Add this line to your application's Gemfile:

```ruby
gem 'bookfinder'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bookfinder

## Usage

Currently this gem allows you to only make a get request to a publicly accessible endpoint, which is why no authorization is required.

To instantiate the BookFinder client you can do the following:
```ruby 
# because it's a public endpoint you don't need any authentication
bookfinder = BookFinder::Client.new
```

Currently the BookFinder API only has one endpoint:
```ruby
# searching by bookname or author name will return an array of results that contain author name, title of the book, a description, and an image link
bookfinder.books("1984")
=> [#<BookFinder::Book:0x007f7feb0eb4e8 @title="Nineteen Eighty-four", @authors="George Orwell", @page_count=325, @description="Renowned urban artist Shepard Fairey's new look for Orwell's classic dystopian tale One of Britain's most popular novels.......
```

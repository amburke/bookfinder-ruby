Gem::Specification.new do |s|
  s.name        = 'bookfinder'
  s.version     = '1.0.0'
  s.date        = '2016-12-25'
  s.summary     = "Ruby client for the Google Books API."
  s.description = "A ruby wrapper that leverages the Google Books API, making it easy to pull publically avaiable information relating to a book"
  s.authors     = ["Alex Burke"]
  s.email       = 'malcolm.burke.music@gmail.com'
  s.files       = ["lib/bookfinder.rb", "lib/bookfinder/client.rb", "lib/bookfinder/book.rb"]
  s.homepage    = 'http://rubygems.org/gems/bookfinder'
  s.license     = 'MIT'

  s.add_runtime_dependency 'json', '~> 1.8'
  s.add_runtime_dependency 'httparty', '~> 0.14', '>= 0.14.0'
  s.required_ruby_version = '>= 2.1.6'
end

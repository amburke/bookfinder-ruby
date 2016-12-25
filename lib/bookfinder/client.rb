require 'httparty'

module BookFinder
  class Client
    include HTTParty
    BASE_URI = "https://www.googleapis.com/books/v1/"

    #this will only make requests to the public variation of the google books api
    def initialize
    end

    def books(name)
      response = http_get(
        endpoint: "volumes?q=",
        query: name.sub(" ","")
      )

      response.map { |book| BookFinder::Book.new(book["volumeInfo"]) }
    end

    private

    def http_get(endpoint:, query:)
      self.class.get(BASE_URI + endpoint + query).parsed_response["items"]
    end

  end
end

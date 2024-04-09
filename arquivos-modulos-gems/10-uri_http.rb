require "uri"
require "net/http"

uri = URI.parse("https://www.google.com")

p Net::HTTP.get(uri)
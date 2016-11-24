require 'net/http'
require 'uri'

# creating the headers hash
headers = {
  'User-Agent' => 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.0.1) Gecko/20060111 Firefox/2.0.0.6',
  'X-Requested-With' => 'Javascript'
}

# parse the url we want to access
uri = URI.parse('http://example.com/some/page/?foo=bar')

# creating a request object
http = Net::Http.new(uri.host)

# GET request
puts http.get(uri.path, headers)

# POST request
puts http.post(uri.path, headers)
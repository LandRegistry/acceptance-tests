require 'httparty'
require 'json'

# any prerequisites to use the APIs below, e.g.
# creating API key, creating account, etc

require 'landregistry/http_client'

#$accept_header = 'application/vnd.api+json;revision=0.1'
$accept_header = 'application/json'
$client = LandRegistry::HttpClient.new(ENV['HTTPAUTH_USERNAME'], ENV['HTTPAUTH_PASSWORD'], $accept_header)

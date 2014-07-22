require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'selenium-webdriver'
require 'w3c_validators'

include W3CValidators


$CASEWORK_FRONTEND_DOMAIN = (ENV['CASEWORK_FRONTEND_DOMAIN'] || '0.0.0.0:8004')
$SEARCH_FRONTEND_DOMAIN = (ENV['SEARCH_FRONTEND_DOMAIN'] || '0.0.0.0:8002') # not sure of local address yet
$PROPERTY_FRONTEND_DOMAIN = (ENV['PROPERTY_FRONTEND_DOMAIN'] || '0.0.0.0:8002') # not sure of local address yet
$MINT_API_DOMAIN = (ENV['MINT_API_DOMAIN'] || '0.0.0.0:8001') # not sure of local address yet

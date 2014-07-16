
require 'capybara/cucumber'
require 'capybara-webkit'
require 'selenium-webdriver'

$CASEWORK_FRONTEND_URL = (ENV['CASEWORK_FRONTEND_URL'] || 'http://0.0.0.0:8004/')

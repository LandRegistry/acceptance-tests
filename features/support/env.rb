
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'selenium-webdriver'

$CASEWORK_FRONTEND_URL = (ENV['CASEWORK_FRONTEND_URL'] || 'http://0.0.0.0:8004/registration')

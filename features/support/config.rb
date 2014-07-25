require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'selenium-webdriver'

include Capybara::DSL

Capybara.default_selector = :xpath
Capybara.default_driver = :poltergeist
Capybara.javascript_driver = :poltergeist
Capybara.default_wait_time = 10
Capybara.app_host = 'http://localhost:4567' # change url

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, :inspector => true)
end

$http_auth_name = (ENV['HTTPAUTH_USERNAME'] || '')
$http_auth_password = (ENV['HTTPAUTH_PASSWORD'] || '')

if page.driver.respond_to?(:basic_auth)
  page.driver.basic_auth($http_auth_name, $http_auth_password)
elsif page.driver.respond_to?(:basic_authorize)
  page.driver.basic_authorize($http_auth_name, $http_auth_password)
elsif page.driver.respond_to?(:browser) && page.driver.browser.respond_to?(:basic_authorize)
  page.driver.browser.basic_authorize($http_auth_name, $http_auth_password)
end

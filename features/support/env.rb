require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

# features/support/selenium_webdriver_monkey_patch.rb



Capybara.default_driver = :selenium
Capybara.current_driver = :chrome

Capybara.javascript_driver = :chrome
Capybara.default_selector = :xpath
Capybara.default_wait_time = 10
# Bug in selenium atm causing firefox to open non-retina (https://code.google.com/p/selenium/issues/detail?id=7445)
# So using chrome...

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :selenium_cdsadsahrome)
end

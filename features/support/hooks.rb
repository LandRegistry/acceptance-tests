Before do
  # Do something before each scenario.
end


Before('@webuitest') do
  Capybara.default_selector = :xpath
  Capybara.default_driver = :selenium
  Capybara.javascript_driver = :selenium
  Capybara.default_wait_time = 10

	Capybara.register_driver :selenium do |app|

	  custom_profile = Selenium::WebDriver::Firefox::Profile.new

	  # Turn off the super annoying popup!
	  custom_profile["network.http.prompt-temp-redirect"] = false

	  Capybara::Selenium::Driver.new(app, :browser => :firefox, :profile => custom_profile)
	end
end


After do | scenario |
  if (scenario.failed?)
      page.save_screenshot "sshot-#{Time.new.to_i}.png"
  end
end

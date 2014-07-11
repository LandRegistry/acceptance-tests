Before do
  # Do something before each scenario.
end


Before('@webuitest') do
  Capybara.default_selector = :xpath
  Capybara.default_driver = :webkit
  Capybara.javascript_driver = :webkit
  Capybara.default_wait_time = 10
end


After do | scenario |
  if (scenario.failed?)
      page.save_screenshot "sshot-#{Time.new.to_i}.png"
  end
end

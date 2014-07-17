Before do
  # Do something before each scenario.
end


Before('@webuitest') do
  Capybara.default_selector = :xpath
Capybara.default_driver = :poltergeist
Capybara.javascript_driver = :poltergeist
Capybara.default_wait_time = 10

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, :inspector => true)
end
end


After do | scenario |
  if (scenario.failed?)
      page.save_screenshot "sshot-#{Time.new.to_i}.png"
  end
end

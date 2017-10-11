require 'capybara/dsl'

After do |scenario|
Dir.mkdir('reports') unless Dir.exist?('reports')

  sufix = ('error' if scenario.failed?) || 'success'
  name = scenario.name.tr(' ', '_').downcase

  page.save_screenshot("reports/#{sufix}-#{name}.png")
  embed("reports/#{sufix}-#{name}.png", 'image/png', 'SCREENSHOT')

  if page.driver.browser.window_handles.count > 1
    puts page.driver.browser.window_handles.count
    page.driver.browser.close
    last_handle = page.driver.browser.window_handles.last
    page.driver.browser.switch_to.window(last_handle)
  end

  @app.commom.load
  @app.home.doLogoutCleanUP
  Capybara.reset_sessions!

end

Before do |scenario|
  Capybara.register_driver :selenium do |app|
     Capybara::Selenium::Driver.new(app, :browser => :chrome, :driver_path => web_driver)
  end
end


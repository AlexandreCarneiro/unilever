require 'capybara/dsl'

After do |scenario|
Dir.mkdir('reports') unless Dir.exist?('reports')

  sufix = ('error' if scenario.failed?) || 'success'
  name = scenario.name.tr(' ', '_').downcase
  d = DateTime.now
  datetime = d.strftime("%d-%m-%Y_%H-%M")
  namePath = "reports/#{sufix}-#{name}-#{datetime}.png"
  page.save_screenshot(namePath)
  embed(namePath, 'image/png', 'SCREENSHOT')

  if page.driver.browser.window_handles.count > 1
    puts page.driver.browser.window_handles.count
    page.driver.browser.close
    last_handle = page.driver.browser.window_handles.last
    page.driver.browser.switch_to.window(last_handle)
  end

  @app.home.logoutCleanUP
  Capybara.reset_sessions!
end

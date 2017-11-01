require 'rspec'
require 'yaml'
require 'selenium/webdriver'
require 'capybara/dsl'
require 'pry'
require 'site_prism'

include Capybara::DSL
include RSpec::Matchers

ENVIRONMENT = (YAML.load_file('./features/config/environment.yml'))
MASS = (YAML.load_file('./features/fixtures/mass.yml'))

Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
	Capybara.current_driver= :selenium
 	config.default_max_wait_time = 6
 	# window = Capybara.current_session.driver.browser.manage.window
 	# window.resize_to(1280, 840)
 	Capybara.page.driver.browser.manage.window.maximize
end

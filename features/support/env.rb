require 'selenium-webdriver'
require 'rspec/expectations'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'capybara/spec/test_app'
require 'rack/test'
include ::RSpec::Matchers
Capybara.app = TestApp
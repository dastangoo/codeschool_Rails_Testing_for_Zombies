require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'capybara/rails'

class ActionDispatch::IntegrationTest
  
  include Capybara::DSL
  
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  def teardown
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end
  
  def sign_up_as(name, graveyard)
    click_link "Sign Up"
    fill_in "Name", with: name
    fill_in "Graveyard", with: graveyard
    click_button "Sign Up"
  end
end

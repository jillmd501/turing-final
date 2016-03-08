ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'capybara/rails'

class ActiveSupport::TestCase
end

class ActionDispatch::IntegrationTest
  include Capybara::DSL
    def login_user
      visit "/"
      within(".right") do
        click_link "Login"
      end
      fill_in "Username", with: "John"
      fill_in "Password", with: "Password"
      click_button "Login"
    end


  def teardown
    reset_session!
  end
end

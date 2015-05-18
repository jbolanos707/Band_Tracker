require('capybara/rspec')
require('spec_helper')
require('./app')
Capybara.app = Sinatra::Application

describe('band tracker app') do

  describe('index get', {:type => :feature}) do
    it('Displays index page') do
      visit('/')
      expect(page).to have_content('Band Tracker')
    end
  end
end

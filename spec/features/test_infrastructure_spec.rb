require 'capybara'
require 'capybara/rspec'
require 'rspec'

feature 'Testing setup works' do
  scenario 'Can run app and check page content' do
    visit '/'
    expect(page).to have_content("Chitter")
  end
end

require 'capybara'
require 'capybara/rspec'
require 'rspec'

feature 'Feed' do
  scenario 'Can see a list of peeps' do
    visit '/'
    expect(page).to have_content(/Peep 1/)
    expect(page).to have_content(/Peep 2/)
  end
end

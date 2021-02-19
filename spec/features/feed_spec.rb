require 'capybara'
require 'capybara/rspec'
require 'rspec'

feature 'Feed' do
  scenario 'Can see a list of peeps' do
    visit '/'
    expect(page).to have_content(/Peep 1/)
    expect(page).to have_content(/Peep 2/)
  end
  scenario 'Can post a new peep and see it added to the list' do
    visit '/'
    expect(page).to have_content(/Peep 1/)
    expect(page).to have_content(/Peep 2/)
    fill_in("peep", with: 'Peep 3')
    click_button("Post")
    expect(page).to have_content(/Peep 1/)
    expect(page).to have_content(/Peep 2/)
    expect(page).to have_content(/Peep 3/)
  end
end

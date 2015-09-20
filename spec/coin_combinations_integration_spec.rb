require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Coin Combinations path', {:type=>:feature}) do
  it('will provide correct number of quarters, dimes, nickles and pennies') do
    visit('/')
    fill_in('total_cents', :with => 59)
    click_button('Gimme da Money Baby!')
    expect(page).to have_content("2: quarters")
  end
end

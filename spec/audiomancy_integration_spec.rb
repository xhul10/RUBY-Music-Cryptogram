require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('note array output path', {:type => :feature}) do
  it('displays output on second page') do
    visit('/')
    fill_in('textInput', :with => 'test')
    click_button('Convert!')
    expect(page).to have_content("a, c, g#, a")
  end
end

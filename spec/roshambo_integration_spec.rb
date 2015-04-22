require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('takes form results and puts on page', {:type => :feature}) do
 it('shows if players choice beats opponent') do
   visit('/')
   fill_in('sign', :with => "rock")
   fill_in('sign2', :with => "scissors")
   click_button('Send')
   expect(page).to have_content(true)    
end
end

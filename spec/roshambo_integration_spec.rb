require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application

describe('takes form results and puts on page', {:type => :feature}) do
 it('shows if players choice beats opponent') do
   visit('/')
   select 'rock', from:  "sign"
   select 'scissors', from: "sign2"
   click_button('Send')

   expect(page).to have_content(true)
end
end

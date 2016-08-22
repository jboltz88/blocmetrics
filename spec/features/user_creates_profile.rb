require 'rails_helper'

RSpec.feature "User Creates Pofile", type: :feature, js: true do


  scenario "successfully" do
    # Setup
    # user = User.create(email: 'foo@...')
    user = create(:user)

    # Exercise
    visit '/users/sign_in'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'

    expect(page).to have_text 'Signed in successfully.'
    #binding.pry
    click_link 'Edit profile'
    click_link 'Sign Out'


    # Assertions
  end
end

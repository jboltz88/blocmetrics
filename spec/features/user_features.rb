require 'rails_helper'

RSpec.feature "User tests features", type: :feature, js: true do


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
    click_link 'Back'

    click_link 'New Application'
    fill_in 'Name', with: "Google"
    fill_in 'Url', with: "www.google.com"
    click_button 'Save'
    expect(page).to have_text 'successfully registered your application'

    click_link 'New Application'
    fill_in 'Name', with: "Facebook"
    fill_in 'Url', with: "www.facebook.com"
    click_button 'Save'
    expect(page).to have_text 'successfully registered your application'

    click_link 'Google'
    click_link 'Delete Application'
    expect(page).to have_text 'was deleted successfully.'

    click_link 'Sign Out'
    expect(page).to have_text 'Signed out successfully.'

    # Assertions
  end
end

require 'rails_helper'

RSpec.describe 'Log in page', type: :feature do
  before :each do
    User.create(name: 'name', email: 'user@example.com', password: 'password', password_confirmation: 'password')
    visit new_user_session_path
  end

  it 'displays detail error with empty credentials' do
    fill_in 'user_email', with: ''
    fill_in 'user_password', with: ''
    click_button 'Log in'
    expect(page).to have_content('Invalid Email or password.')
  end

  it 'displays error message with invalid credentials' do
    fill_in 'user_email', with: 'user@example.com'
    fill_in 'user_password', with: 'wrong_password'
    click_button 'Log in'
    expect(page).to have_content('Invalid Email or password.')
  end

  it 'Successfully logs in with correct credentials' do
    fill_in 'user_email', with: 'correct@email.com'
    fill_in 'user_password', with: 'correctpassword'
    click_button 'Log in'
    expect(page).to have_current_path(user_session_path)
  end
end

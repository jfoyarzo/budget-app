require 'rails_helper'

RSpec.describe 'Groups Page', type: :system do
  describe 'Group#index' do
    before :each do
      @user = User.create!(name: 'name', email: 'email@gmail.com', password: 'password',
                           password_confirmation: 'password')
      @group = Group.create!(name: 'test group', icon: 'https://www.someicon.cl', user_id: @user.id)
      visit new_user_session_path
      fill_in 'user_email', with: 'email@gmail.com'
      fill_in 'user_password', with: 'password'
      click_button 'Log in'
    end

    it 'displays the name of the group' do
      expect(page).to have_content(@group.name)
    end

    it 'displays the icon of the group' do
      expect(page).to have_css('img')
    end

    it 'displays a button with text Add Category' do
      expect(page).to have_content('Add Category')
    end

    it 'displays the total amount of payments for a group' do
      expect(page).to have_content('Payments total')
    end

    it 'displays the correct navbar title' do
      expect(page).to have_content('CATEGORIES')
    end
  end
end

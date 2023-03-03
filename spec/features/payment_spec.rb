require 'rails_helper'

RSpec.describe 'Payments Page', type: :system do
  describe 'Payment#index' do
    before :each do
      @user = User.create!(name: 'name', email: 'email2@gmail.com', password: 'password')
      @payment = Payment.create!(name: 'test payment', amount: 10.05, author: @user)
      @group = Group.create!(name: 'test group', icon: 'https://www.someicon.cl', user_id: @user.id)
      GroupPayment.create!(payment: @payment, group: @group)
      visit new_user_session_path
      fill_in 'user_email', with: 'email2@gmail.com'
      fill_in 'user_password', with: 'password'
      click_button 'Log in'
      sleep 2
      visit "/categories/#{@group.id}/payments"
    end

    it 'displays the name of the payment' do
      expect(page).to have_content(@payment.name)
    end

    it 'displays the amount of the payment' do
      expect(page).to have_content(@payment.amount)
    end

    it 'displays a button with text Add Payment' do
      expect(page).to have_content('Add Payment')
    end

    it 'displays the correct title in the navbar' do
      expect(page).to have_content('PAYMENTS')
    end
  end
end

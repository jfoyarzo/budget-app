require 'rails_helper'

RSpec.describe GroupPayment, type: :model do
  subject do
    @user = User.create(name: 'user', email: 'mail@mail.com', password: '123456')
    @payment = Payment.create(name: 'payment1', amount: 1000.00, author: @user)
    @group = Group.create(name: 'group1', icon: 'fa-icon', user: @user)
    @group_payment = GroupPayment.create(payment: @payment, group: @group)
  end

  before { subject.save }

  describe 'Attribute validation' do
    it 'is not valid without group' do
      subject.group = nil
      expect(subject).to be_invalid
    end
    it 'is not valid without payment' do
      subject.payment = nil
      expect(subject).to be_invalid
    end
  end
end

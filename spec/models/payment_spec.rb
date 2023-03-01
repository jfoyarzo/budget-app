require 'rails_helper'

RSpec.describe Payment, type: :model do
  subject do
    @user = User.create(name: 'user', email: 'mail@mail.com', password: '123456')
    @payment = Payment.create(name: 'payment1', amount: 1000.00, author: @user)
  end

  before { subject.save }

  describe 'Attribute validation' do
    it 'is not valid without name' do
      subject.name = nil
      expect(subject).to be_invalid
    end
    it 'is not valid if the name is blank' do
      subject.name = ' '
      expect(subject).to be_invalid
    end
    it 'is not valid without amount' do
      subject.amount = nil
      expect(subject).to be_invalid
    end
    it 'is not valid if amount is not a number' do
      subject.amount = 'lots of money'
      expect(subject).to be_invalid
    end
    it 'is not valid if amount is not bigger than 0' do
      subject.amount = -1000
      expect(subject).to be_invalid
    end
  end
end

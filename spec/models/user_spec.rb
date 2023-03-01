require 'rails_helper'

RSpec.describe User, type: :model do
  subject { @user = User.create(name: 'user', email: 'mail@mail.com', password: '123456') }

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
    it 'is not valid without email' do
      subject.email = nil
      expect(subject).to be_invalid
    end
    it 'is not valid without a password' do
      subject.password = nil
      expect(subject).to be_invalid
    end
  end
end

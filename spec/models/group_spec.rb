require 'rails_helper'

RSpec.describe Group, type: :model do
  subject do
    @user = User.create(name: 'user', email: 'mail5@mail.com', password: '123456')
    @group = Group.create(name: 'group1', icon: 'fa-icon', user: @user)
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
    it 'is not valid without icon' do
      subject.icon = nil
      expect(subject).to be_invalid
    end
    it 'is not valid without a user' do
      subject.user = nil
      expect(subject).to be_invalid
    end
  end
end

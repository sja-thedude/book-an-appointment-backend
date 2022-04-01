require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(name: 'mike4234', email: 'allysaidi@gmail.com', password:
    'xxxxxx890', phone_number: '0934278456')
  end
  describe 'Validations for User Model' do
    it 'that a user has a valid name' do
      subject.name = 'mike4234'
      expect(subject).to be_valid
    end

    it 'that a user has a valid email' do
      subject.email = 'allysaidi@gmail.com'
      expect(subject).to be_valid
    end

    it 'that a user has a valid password' do
      subject.password = 'xxxxxx890'
      expect(subject).to be_valid
    end

    it 'that a user has a valid phone_number' do
      subject.phone_number = '0934278456'
      expect(subject).to be_valid
    end
  end
end

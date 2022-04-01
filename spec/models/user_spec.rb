require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(name: 'mike4234', email: 'allysaidi@gmail.com', password:
    'xxxxxx890', phone_number: '0934278456')
  end
  describe 'Validations for User Model' do
    it 'that a user has a valid name' do
      expect(subject).to be_valid
      subject.name = 'mike4234'
    end

    it 'that a user has a valid email' do
      expect(subject).to be_valid
      subject.email = 'allysaidi@gmail.com'
    end

    it 'that a user has a valid password' do
      expect(subject).to be_valid
      subject.password = 'xxxxxx890'
    end

    it 'that a user has a valid phone_number' do
      expect(subject).to be_valid
      subject.phone_number = '0934278456'
    end
  end
end

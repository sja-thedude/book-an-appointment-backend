require 'rails_helper'

RSpec.describe Address, type: :model do
  subject do
    Address.new(city: 'London', state: 'Orleans', country:
    'England', street: '9 rue de Bourge 45000')
  end
  it 'a Address should has a valid state' do
    expect(subject).to be_valid
    subject.city = 'Orleans'
  end

  it 'a Address should has a valid city' do
    expect(subject).to be_valid
    subject.country = 'London'
  end

  it 'a Address should has a valid country' do
    expect(subject).to be_valid
    subject.street = 'England'
  end

  it 'a Address should has a valid street' do
    expect(subject).to be_valid
    subject.street = '9 rue de Bourge 45000'
  end
end

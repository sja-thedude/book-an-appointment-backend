require 'rails_helper'

RSpec.describe Address, type: :model do
  subject do
    Address.new(city: 'London', state: 'Orleans', country:
    'England', street: '9 rue de Bourge 45000')
  end
  it 'Address should has a valid state' do
    subject.city = 'Orleans'
    expect(subject).to be_valid
  end

  it 'Address should has a valid state' do
    subject.city = ''
    expect(subject).to_not be_valid
  end

  it 'Address should has a valid state' do
    subject.city = nil
    expect(subject).to_not be_valid
  end

  it 'Address should has a valid city' do
    subject.country = 'London'
    expect(subject).to be_valid
  end

  it 'Address should has a valid city' do
    subject.country = ''
    expect(subject).to_not be_valid
  end

  it 'Address should has a valid city' do
    subject.country = nil
    expect(subject).to_not be_valid
  end

  it 'Address should has a valid country' do
    subject.country = 'England'
    expect(subject).to be_valid
  end

  it 'Address should has a valid country' do
    subject.country = ''
    expect(subject).to_not be_valid
  end

  it 'Address should has a valid country' do
    subject.country = nil
    expect(subject).to_not be_valid
  end

  it 'Address should has a valid street' do
    subject.street = '9 rue de Bourge 45000'
    expect(subject).to be_valid
  end

  it 'Address should has a valid street' do
    subject.street = ''
    expect(subject).to_not be_valid
  end

  it 'Address should has a valid street' do
    subject.street = nil
    expect(subject).to_not be_valid
  end
end

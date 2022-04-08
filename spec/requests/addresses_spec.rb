require 'rails_helper'

RSpec.describe 'Addresses', type: :request do
  address1 = Address.new(city: 'London', state: 'Orleans', country:
    'England', street: '9 rue de Bourge 45000')

  describe 'GET /index' do
    before(:example) { get '/addresses' }

    it 'should returns http 200 success' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /show' do
    before(:example) { get "/addresses/#{address1.id}" }

    it 'should returns http 200 success' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'Post /create' do
    before(:example) do
      post '/addresses', params: { address: { city: 'London', state: 'Orleans',
                                              country: 'England', street: '9 rue de Bourge 45000' } }
    end

    it 'should returns http 201 created' do
      expect(response).to have_http_status(201)
    end
  end
end

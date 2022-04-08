require 'rails_helper'

RSpec.describe 'Doctors', type: :request do
  doctor = Doctor.new(
    name: 'Aristote Miler',
    email: 'aristote@gmail.com',
    picture: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1435027890l/37298.jpg'
  )

  describe 'GET /index' do
    before(:example) { get '/doctors' }

    it 'should returns http 200 success' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /show' do
    before(:example) { get "/doctors/#{doctor.id}" }

    it 'should returns http 200 success' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'Post /create' do
    before(:example) do
      post '/doctors', params: {
        doctor: {
          name: 'Aristote Miler',
          email: 'aristote@gmail.com',
          picture: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1435027890l/37298.jpg'
        }
      }
    end

    it 'should returns http 201 created' do
      expect(response).to have_http_status(201)
    end
  end
end

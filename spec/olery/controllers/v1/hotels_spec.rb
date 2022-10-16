require 'spec_helper'

describe Olery::V1::Controller::Hotels, type: :request do

  before do
    @hotels = create_list :hotel, 2
    @url   = "/hotels"
  end

  describe 'GET' do

    it 'lists the hotels' do
      response = get @url
      data     = JSON.parse response.body

      attrs    = @hotels.map do |u|
        {
          id:    u.id,
          name:  u.name,
        }
      end
      expect(data['data'].count).to eq(2)
      expect(data['data'].map(&:deep_symbolize_keys)).to eq(attrs)
    end

    it 'lists the hotels' do
      response = get "#{@url}/#{@hotels[0].id}"
      data     = JSON.parse response.body

      attrs = {
        id:    @hotels[0].id,
        name:  @hotels[0].name,
      }
      expect(data['data'].deep_symbolize_keys).to eq(attrs)
    end
  end
end

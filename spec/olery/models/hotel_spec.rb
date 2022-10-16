require 'spec_helper'

describe Olery::Hotel do
  before do
    @hotel = Olery::Hotel.create(name: 'Name1')
  end
 
  describe 'Hotel' do
    it 'should have an id' do
      expect(@hotel.id).to be_a(Integer)
    end

    it 'should have a name' do
      expect(@hotel.name).to eq('Name1')
    end
  end

end
require 'spec_helper'

describe Olery::User do
  before do
    @user = Olery::User.create(name: 'Foo', email: 'foo@bar.com')
  end

  describe 'User' do
    it 'should have a name' do
      expect(@user.name).to eq('Foo')
    end

    it 'should have an email' do
      expect(@user.email).to eq('foo@bar.com')
    end
  end

end

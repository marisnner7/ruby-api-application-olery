module Olery
  class HotelGroup < Sequel::Model

    many_through_many :hotels
    many_through_many :groups

  end
end

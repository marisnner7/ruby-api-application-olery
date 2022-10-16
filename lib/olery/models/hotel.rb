module Olery
  class Hotel < Sequel::Model

    many_to_one :hotels_groups

  end
end


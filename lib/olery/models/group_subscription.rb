module Olery
  class GroupSubscription < Sequel::Model

    many_through_many :contracts
    many_through_many :groups

  end
end

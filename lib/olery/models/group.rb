module Olery
  class Group < Sequel::Model

    one_to_many :hotels_groups, key: :group_id

  end
end
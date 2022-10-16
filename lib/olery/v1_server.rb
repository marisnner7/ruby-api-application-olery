module Olery
  module V1
    class Server < Sinatra::Base

      use V1::Controller::Users
      use V1::Controller::Hotels

    end
  end
end

module Olery
  module V1
    module Controller
      class Hotels < ::Olery::Controller::Base

        namespace '/hotels' do

          error Sequel::NoMatchingRow do
            json_error 'The specified hotel does not exist', 404
          end

          before do
            content_type :json
          end

          get '' do
            json data: Hotel.all.map { |u| serialize(u) }
          end

          get '/:id' do
            hotel = Hotel.with_pk! params[:id]
            json data: serialize(hotel)
          end

          def serialize hotel
            hotel.to_hash.slice(:id, :name)
          end
          
        end
      end
    end
  end
end
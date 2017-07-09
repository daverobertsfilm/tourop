class TourDate < ApplicationRecord
  has_one :hotel
  has_one :hotel_date
end

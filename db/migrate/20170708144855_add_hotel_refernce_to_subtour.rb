class AddHotelRefernceToSubtour < ActiveRecord::Migration[5.0]
  def change
    add_reference :tour_dates, :hotel, foreign_key: true
    add_reference :tour_dates, :hotel_date, foreign_key: true
  end
end

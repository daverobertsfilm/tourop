class AddTourRefernceToHotelDates < ActiveRecord::Migration[5.0]
  def change
    add_reference :hotel_dates, :tour, foreign_key: true
    add_reference :hotel_dates, :tour_date, foreign_key: true
  end
end

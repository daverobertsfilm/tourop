class AddRefernceToHotelDate < ActiveRecord::Migration[5.0]
  def change
    add_reference :hotel_dates, :hotel, foreign_key: true
  end
end

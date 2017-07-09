class AddTourRefernceToHotels < ActiveRecord::Migration[5.0]
  def change
    add_reference :hotels, :tour, foreign_key: true
    add_reference :hotels, :tour_date, foreign_key: true
  end
end

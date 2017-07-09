class AddReferenceToTourDate < ActiveRecord::Migration[5.0]
  def change
    add_reference :tour_dates, :tour, foreign_key: true
  end
end

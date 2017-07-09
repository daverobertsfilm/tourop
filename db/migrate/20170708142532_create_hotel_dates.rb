class CreateHotelDates < ActiveRecord::Migration[5.0]
  def change
    create_table :hotel_dates do |t|
      t.string :title
      t.date :date
      t.timestamps
    end
  end
end

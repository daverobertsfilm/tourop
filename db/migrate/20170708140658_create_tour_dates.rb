class CreateTourDates < ActiveRecord::Migration[5.0]
  def change
    create_table :tour_dates do |t|
      t.string :title
      t.date :dep_date

      t.timestamps
    end
  end
end

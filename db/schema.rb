# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170708145456) do

  create_table "hotel_dates", force: :cascade do |t|
    t.string   "title"
    t.date     "date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "hotel_id"
    t.integer  "tour_id"
    t.integer  "tour_date_id"
    t.index ["hotel_id"], name: "index_hotel_dates_on_hotel_id"
    t.index ["tour_date_id"], name: "index_hotel_dates_on_tour_date_id"
    t.index ["tour_id"], name: "index_hotel_dates_on_tour_id"
  end

  create_table "hotels", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "tour_id"
    t.integer  "tour_date_id"
    t.index ["tour_date_id"], name: "index_hotels_on_tour_date_id"
    t.index ["tour_id"], name: "index_hotels_on_tour_id"
  end

  create_table "tour_dates", force: :cascade do |t|
    t.string   "title"
    t.date     "dep_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "tour_id"
    t.integer  "hotel_id"
    t.integer  "hotel_date_id"
    t.index ["hotel_date_id"], name: "index_tour_dates_on_hotel_date_id"
    t.index ["hotel_id"], name: "index_tour_dates_on_hotel_id"
    t.index ["tour_id"], name: "index_tour_dates_on_tour_id"
  end

  create_table "tours", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.boolean  "published_status"
    t.text     "tour_itinerary"
    t.text     "tour_inclusions"
    t.string   "tour_ticket_notes"
    t.string   "tour_notes"
    t.text     "tour_important_notes"
    t.string   "tour_destination"
    t.string   "tour_status"
    t.string   "tour_type"
    t.integer  "tour_nights"
    t.integer  "tour_balance_due_in_days"
    t.integer  "tour_booking_deposit"
    t.boolean  "tour_seat_numbers_on",           default: true
    t.boolean  "tour_mystery_tour",              default: false
    t.boolean  "tour_passport_required",         default: false
    t.boolean  "tour_self_drive_available",      default: true
    t.boolean  "tour_not_for_external_agents",   default: false
    t.boolean  "tour_tickets_included_in_fare",  default: true
    t.boolean  "tour_margin_scheme_vat_applies", default: false
    t.boolean  "tour_allow_agent_web_discounts", default: false
    t.boolean  "tour_requires_own_insurance",    default: false
    t.boolean  "tour_on_web_sale",               default: true
    t.boolean  "tour_web_desposits_allowed",     default: true
    t.boolean  "tour_pick_seats_online",         default: true
    t.boolean  "tour_insurance_available",       default: true
    t.boolean  "tour_insurance_inclusive",       default: false
    t.boolean  "tour_insurance_vat_applies",     default: true
  end

end

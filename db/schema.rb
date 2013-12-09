# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131208150124) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: true do |t|
    t.integer  "client_id"
    t.string   "business_name"
    t.string   "address"
    t.string   "address2"
    t.string   "city"
    t.string   "county"
    t.string   "country"
    t.string   "postcode"
    t.string   "phone"
    t.string   "fax"
    t.string   "mobile"
    t.string   "website"
    t.string   "email"
    t.text     "bank_details"
    t.string   "tax_number"
    t.boolean  "default",       default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "addresses", ["client_id"], name: "index_addresses_on_client_id", using: :btree

  create_table "clients", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoice_items", force: true do |t|
    t.integer  "invoice_id"
    t.integer  "tax_rate_id"
    t.string   "name"
    t.text     "description"
    t.float    "quantity"
    t.string   "unit"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "invoice_items", ["invoice_id"], name: "index_invoice_items_on_invoice_id", using: :btree
  add_index "invoice_items", ["tax_rate_id"], name: "index_invoice_items_on_tax_rate_id", using: :btree

  create_table "invoice_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoices", force: true do |t|
    t.integer  "client_id"
    t.string   "invoice_number"
    t.date     "due_date"
    t.string   "name"
    t.string   "address"
    t.string   "address2"
    t.string   "city"
    t.string   "county"
    t.string   "country"
    t.string   "tax_number"
    t.integer  "invoice_status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date"
    t.integer  "address_id"
    t.string   "postcode"
  end

  add_index "invoices", ["client_id"], name: "index_invoices_on_client_id", using: :btree
  add_index "invoices", ["invoice_status_id"], name: "index_invoices_on_invoice_status_id", using: :btree
  add_index "invoices", ["name"], name: "index_invoices_on_name", using: :btree

  create_table "tax_rates", force: true do |t|
    t.string   "name"
    t.float    "percent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end

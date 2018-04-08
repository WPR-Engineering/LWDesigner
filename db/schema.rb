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

ActiveRecord::Schema.define(version: 20180408052235) do

  create_table "gpio_terminals", force: :cascade do |t|
    t.string "name"
    t.integer "pin"
    t.text "description"
    t.integer "lwchannel"
    t.text "notes"
    t.integer "node_gpio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ioDirection"
    t.integer "powerstation_id"
    t.index ["node_gpio_id"], name: "index_gpio_terminals_on_node_gpio_id"
    t.index ["powerstation_id"], name: "index_gpio_terminals_on_powerstation_id"
  end

  create_table "node_gpios", force: :cascade do |t|
    t.string "hostname"
    t.text "location"
    t.string "serialNumber"
    t.string "macAddress"
    t.string "ipAddress"
    t.string "subnetmask"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "node_inputs", force: :cascade do |t|
    t.string "name"
    t.text "inputDescription"
    t.integer "lwChannel"
    t.boolean "shared"
    t.string "sourceMode"
    t.integer "gain"
    t.boolean "disabled"
    t.text "notes"
    t.integer "node_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "powerStation_id"
    t.index ["node_id"], name: "index_node_inputs_on_node_id"
    t.index ["powerStation_id"], name: "index_node_inputs_on_powerStation_id"
  end

  create_table "node_outputs", force: :cascade do |t|
    t.string "destination"
    t.text "outputDescription"
    t.integer "selectedChannel"
    t.string "mode"
    t.integer "gain"
    t.text "notes"
    t.integer "node_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "powerStation_id"
    t.index ["node_id"], name: "index_node_outputs_on_node_id"
    t.index ["powerStation_id"], name: "index_node_outputs_on_powerStation_id"
  end

  create_table "nodes", force: :cascade do |t|
    t.string "hostname"
    t.text "location"
    t.string "ipAddress"
    t.string "subnetMask"
    t.string "nodeType"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "mode"
  end

  create_table "power_stations", force: :cascade do |t|
    t.string "hostname"
    t.text "location"
    t.string "macAddress"
    t.string "ipAddress"
    t.string "subnetmask"
    t.string "serialNumber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tokens", force: :cascade do |t|
    t.integer "user_id"
    t.string "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tokens_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "group"
    t.string "password_digest"
    t.string "external_id"
    t.boolean "active", default: true
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

end

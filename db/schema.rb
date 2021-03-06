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

ActiveRecord::Schema.define(version: 20180412194659) do

  create_table "audits", force: :cascade do |t|
    t.integer "auditable_id"
    t.string "auditable_type"
    t.integer "associated_id"
    t.string "associated_type"
    t.integer "user_id"
    t.string "user_type"
    t.string "username"
    t.string "action"
    t.text "audited_changes"
    t.integer "version", default: 0
    t.string "comment"
    t.string "remote_address"
    t.string "request_uuid"
    t.datetime "created_at"
    t.index ["associated_type", "associated_id"], name: "associated_index"
    t.index ["auditable_type", "auditable_id"], name: "auditable_index"
    t.index ["created_at"], name: "index_audits_on_created_at"
    t.index ["request_uuid"], name: "index_audits_on_request_uuid"
    t.index ["user_id", "user_type"], name: "user_index"
  end

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
    t.integer "power_station_id"
    t.integer "port"
    t.index ["node_gpio_id"], name: "index_gpio_terminals_on_node_gpio_id"
    t.index ["power_station_id"], name: "index_gpio_terminals_on_power_station_id"
  end

  create_table "networkings", force: :cascade do |t|
    t.string "hostname"
    t.string "type"
    t.string "model"
    t.string "macAddress"
    t.string "ipAddress"
    t.string "subnetMask"
    t.integer "portCount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "macAddress"
    t.string "serialNumber"
  end

  create_table "ports", force: :cascade do |t|
    t.integer "number"
    t.string "type"
    t.string "description"
    t.integer "networking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["networking_id"], name: "index_ports_on_networking_id"
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

  create_table "ps_gpio_terminals", force: :cascade do |t|
    t.string "name"
    t.integer "pin"
    t.text "description"
    t.integer "lwchannel"
    t.text "notes"
    t.string "ioDirection"
    t.integer "port"
    t.integer "power_station_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["power_station_id"], name: "index_ps_gpio_terminals_on_power_station_id"
  end

  create_table "ps_inputs", force: :cascade do |t|
    t.string "name"
    t.text "inputDescription"
    t.integer "lwChannel"
    t.boolean "shared"
    t.string "sourceMode"
    t.integer "gain"
    t.boolean "disabled"
    t.text "notes"
    t.integer "power_station_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["power_station_id"], name: "index_ps_inputs_on_power_station_id"
  end

  create_table "ps_outputs", force: :cascade do |t|
    t.string "destination"
    t.text "outputDescription"
    t.integer "selectedChannel"
    t.string "mode"
    t.integer "gain"
    t.text "notes"
    t.integer "power_station_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["power_station_id"], name: "index_ps_outputs_on_power_station_id"
  end

  create_table "qor_gpio_terminals", force: :cascade do |t|
    t.string "name"
    t.integer "pin"
    t.text "description"
    t.integer "lwchannel"
    t.text "notes"
    t.string "ioDirection"
    t.integer "port"
    t.integer "qor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["qor_id"], name: "index_qor_gpio_terminals_on_qor_id"
  end

  create_table "qor_inputs", force: :cascade do |t|
    t.string "name"
    t.text "inputDescription"
    t.integer "lwChannel"
    t.boolean "shared"
    t.string "sourceMode"
    t.integer "gain"
    t.boolean "disabled"
    t.text "notes"
    t.integer "qor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["qor_id"], name: "index_qor_inputs_on_qor_id"
  end

  create_table "qor_outputs", force: :cascade do |t|
    t.string "destination"
    t.text "outputDescription"
    t.integer "slectedChannel"
    t.string "mode"
    t.integer "gain"
    t.text "notes"
    t.integer "qor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["qor_id"], name: "index_qor_outputs_on_qor_id"
  end

  create_table "qors", force: :cascade do |t|
    t.string "hostname"
    t.string "location"
    t.string "macAddress"
    t.string "ipAddress"
    t.string "subnetMask"
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

  create_table "wires", force: :cascade do |t|
    t.string "code"
    t.string "number"
    t.string "type"
    t.string "color"
    t.string "termination"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

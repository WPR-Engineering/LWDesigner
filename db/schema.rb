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

ActiveRecord::Schema.define(version: 20180404211246) do

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
    t.index ["node_id"], name: "index_node_inputs_on_node_id"
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

end

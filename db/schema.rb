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

ActiveRecord::Schema.define(version: 20150503150756) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", force: true do |t|
    t.string   "race"
    t.string   "gender"
    t.integer  "level"
    t.string   "character_class"
    t.integer  "health"
    t.integer  "magicka"
    t.integer  "fatigue"
    t.integer  "encumbrance"
    t.integer  "agility"
    t.integer  "endurance"
    t.integer  "intelligence"
    t.integer  "luck"
    t.integer  "personality"
    t.integer  "speed"
    t.integer  "strength"
    t.integer  "willpower"
    t.integer  "heavy_armour"
    t.integer  "medium_armour"
    t.integer  "spear"
    t.integer  "acrobatics"
    t.integer  "armourer"
    t.integer  "axe"
    t.integer  "blunt_weapon"
    t.integer  "long_blade"
    t.integer  "block"
    t.integer  "light_armour"
    t.integer  "marksman"
    t.integer  "sneak"
    t.integer  "athletics"
    t.integer  "hand_to_hand"
    t.integer  "short_blade"
    t.integer  "unarmoured"
    t.integer  "illusion"
    t.integer  "mercantile"
    t.integer  "speechcraft"
    t.integer  "alchemy"
    t.integer  "conjuration"
    t.integer  "enchant"
    t.integer  "security"
    t.integer  "alteration"
    t.integer  "destruction"
    t.integer  "mysticism"
    t.integer  "restoration"
    t.integer  "fire_resist"
    t.integer  "frost_resist"
    t.integer  "poison_resist"
    t.integer  "shock_resist"
    t.integer  "magicka_resist"
    t.integer  "disease_resist"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "type"
    t.string   "specialization"
    t.string   "birthsign"
    t.string   "favoured_attribute1"
    t.string   "favoured_attribute2"
    t.string   "major_skill1"
    t.string   "major_skill2"
    t.string   "major_skill3"
    t.string   "major_skill4"
    t.string   "major_skill5"
    t.string   "minor_skill1"
    t.string   "minor_skill2"
    t.string   "minor_skill3"
    t.string   "minor_skill4"
    t.string   "minor_skill5"
  end

  create_table "users", force: true do |t|
    t.string   "email",                        null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree

end

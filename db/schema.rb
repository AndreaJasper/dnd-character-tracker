# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_06_02_195327) do

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "class"
    t.integer "level"
    t.string "race"
    t.string "background"
    t.string "alignment"
    t.integer "experience_points"
    t.text "languages"
    t.text "equipment"
    t.text "features"
    t.text "character_details"
    t.integer "copper"
    t.integer "silver"
    t.integer "gold"
    t.integer "platinum"
    t.text "treasure"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skills", force: :cascade do |t|
    t.integer "acrobatics"
    t.integer "animal_handling"
    t.integer "arcana"
    t.integer "athletics"
    t.integer "deception"
    t.integer "history"
    t.integer "insight"
    t.integer "intimidation"
    t.integer "medicine"
    t.integer "nature"
    t.integer "perception"
    t.integer "performance"
    t.integer "persuasion"
    t.integer "religion"
    t.integer "slight_of_hand"
    t.integer "stealth"
    t.integer "survival"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "spells", force: :cascade do |t|
    t.string "spell_ability"
    t.integer "spell_save"
    t.integer "spell_attack_bonus"
    t.text "spell_slots"
    t.text "spell_types"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stats", force: :cascade do |t|
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.integer "passive_wisdom"
    t.integer "inspiration"
    t.integer "proficiency_bonus"
    t.integer "armor_class"
    t.integer "initiative"
    t.integer "speed"
    t.integer "hit_points"
    t.string "hit_dice"
    t.string "hit_dice_type"
    t.string "weapon"
    t.integer "attack_bonus"
    t.string "damage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

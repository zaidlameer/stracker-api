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

ActiveRecord::Schema[8.1].define(version: 2026_04_07_051645) do
  create_table "checkins", charset: "utf8mb3", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.boolean "completed"
    t.datetime "created_at", null: false
    t.date "date"
    t.bigint "habit_id", null: false
    t.datetime "updated_at", null: false
    t.index ["habit_id"], name: "index_checkins_on_habit_id"
  end

  create_table "habits", charset: "utf8mb3", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_habits_on_user_id"
  end

  create_table "users", charset: "utf8mb3", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "email"
    t.string "name"
    t.datetime "updated_at", null: false
  end
end

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

ActiveRecord::Schema.define(version: 20160213154148) do

  create_table "badges", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "icon_path",   limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "centers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "country",    limit: 255
    t.string   "address",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "degrees", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "exams", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "end_date"
    t.integer  "subject_id",  limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "sender_id",      limit: 4
    t.integer  "exam_id",        limit: 4
    t.text     "question",       limit: 65535
    t.string   "correct_answer", limit: 255
    t.string   "answer_1",       limit: 255
    t.string   "answer_2",       limit: 255
    t.string   "answer_3",       limit: 255
    t.text     "description",    limit: 65535
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "reports", force: :cascade do |t|
    t.integer  "question_id", limit: 4
    t.integer  "sender_id",   limit: 4
    t.integer  "option",      limit: 4
    t.text     "description", limit: 65535
    t.boolean  "reviewed"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.integer  "center_id",   limit: 4
    t.integer  "degree_id",   limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "test_questions", force: :cascade do |t|
    t.integer  "test_id",           limit: 4
    t.integer  "question_id",       limit: 4
    t.integer  "answer",            limit: 4
    t.boolean  "correct"
    t.integer  "order",             limit: 4
    t.boolean  "fail_test_success"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "tests", force: :cascade do |t|
    t.integer  "user_id",             limit: 4
    t.integer  "exam_id",             limit: 4
    t.boolean  "special"
    t.integer  "obtained_experience", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "user_badges", force: :cascade do |t|
    t.datetime "unlocked_date"
    t.integer  "badge_id",      limit: 4
    t.integer  "user_id",       limit: 4
    t.integer  "exam_id",       limit: 4
    t.boolean  "notified"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "user_subjects", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "subject_id", limit: 4
    t.integer  "role",       limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
    t.integer  "center_id",              limit: 4
    t.integer  "degree_id",              limit: 4
    t.integer  "experience",             limit: 4
    t.integer  "level",                  limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end

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

ActiveRecord::Schema.define(version: 20140808014248) do

  create_table "player_updates", force: true do |t|
    t.integer  "player_id",         null: false
    t.integer  "value",             null: false
    t.integer  "salary",            null: false
    t.integer  "age",               null: false
    t.integer  "session",           null: false
    t.integer  "speed",             null: false
    t.integer  "stamina",           null: false
    t.integer  "play_intelligence", null: false
    t.integer  "passing",           null: false
    t.integer  "shooting",          null: false
    t.integer  "header",            null: false
    t.integer  "keeping",           null: false
    t.integer  "ball_control",      null: false
    t.integer  "tackling",          null: false
    t.integer  "cross_balls",       null: false
    t.integer  "set_plays",         null: false
    t.integer  "experience",        null: false
    t.integer  "form",              null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "players", force: true do |t|
    t.integer  "user_id"
    t.integer  "number",     null: false
    t.string   "name",       null: false
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end

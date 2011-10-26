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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111025211700) do

  create_table "commands", :force => true do |t|
    t.integer  "test_report_id"
    t.string   "sysname"
    t.string   "os_type"
    t.string   "cmd"
    t.text     "cmd_output"
    t.string   "timings"
    t.string   "gist_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "commands_test_reports", :id => false, :force => true do |t|
    t.integer "test_report_id"
    t.integer "command_id"
  end

  create_table "test_reports", :force => true do |t|
    t.string   "sysname"
    t.string   "timings"
    t.text     "report"
    t.string   "gist_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

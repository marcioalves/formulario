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

ActiveRecord::Schema.define(version: 20140424191050) do

  create_table "enderecos", force: true do |t|
    t.string   "logradouro"
    t.string   "cep"
    t.integer  "entidade_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "enderecos", ["entidade_id"], name: "index_enderecos_on_entidade_id", using: :btree

  create_table "entidades", force: true do |t|
    t.integer  "codEmp"
    t.string   "razaoSocial"
    t.string   "cep"
    t.integer  "numero"
    t.text     "complemento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

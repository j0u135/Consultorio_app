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

ActiveRecord::Schema.define(version: 20150729072506) do

  create_table "appointments", force: true do |t|
    t.date     "fecha"
    t.time     "hora"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "calendario_id"
    t.integer  "paciente_id"
  end

  create_table "calendarios", force: true do |t|
    t.integer "medico_id"
  end

  create_table "consults", force: true do |t|
    t.date     "fecha"
    t.integer  "paciente_id"
    t.integer  "medico_id"
    t.integer  "tipo_id"
    t.integer  "estatus_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "comentario"
  end

  create_table "historials", force: true do |t|
    t.integer "paciente_id"
    t.text    "comentario"
    t.date    "fecha"
    t.integer "tipo_id"
  end

  create_table "indicacions", force: true do |t|
    t.integer  "consult_id"
    t.string   "indicacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medicamentorecetados", force: true do |t|
    t.integer  "consult_id"
    t.string   "medicamento"
    t.string   "dosis"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medicos", force: true do |t|
    t.string "nombre"
    t.string "primer_ap"
    t.string "segundo_ap"
    t.string "email"
  end

  create_table "pacientes", force: true do |t|
    t.string   "nombre"
    t.string   "primer_ap"
    t.string   "segundo_ap"
    t.string   "email"
    t.string   "peso"
    t.date     "fecha_nac"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

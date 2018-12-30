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

ActiveRecord::Schema.define(version: 2018_12_29_212650) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alerta", force: :cascade do |t|
    t.date "fecharecepcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "prioridad_id"
    t.bigint "informe_id"
    t.boolean "estado", default: true
    t.index ["informe_id"], name: "index_alerta_on_informe_id"
    t.index ["prioridad_id"], name: "index_alerta_on_prioridad_id"
  end

  create_table "carreras", force: :cascade do |t|
    t.string "nombrecarrera"
    t.string "codigo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "facultad_id"
    t.boolean "estado", default: true
    t.index ["facultad_id"], name: "index_carreras_on_facultad_id"
  end

  create_table "estudiantes", force: :cascade do |t|
    t.string "nombreestudiante"
    t.decimal "nem"
    t.string "situacioneconomica"
    t.string "colegio"
    t.decimal "ranking"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "carrera_id"
    t.date "fecha_nacimiento"
    t.boolean "estado", default: true
    t.string "rut"
    t.string "telefono"
    t.string "email"
    t.string "apellidopa"
    t.string "apellidoma"
  end

  create_table "estudiantes_users", force: :cascade do |t|
    t.bigint "estudiantes_id"
    t.bigint "user_id"
    t.index ["estudiantes_id"], name: "index_estudiantes_users_on_estudiantes_id"
    t.index ["user_id"], name: "index_estudiantes_users_on_user_id"
  end

  create_table "facultads", force: :cascade do |t|
    t.string "nombrefacultad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "estado", default: true
  end

  create_table "informes", force: :cascade do |t|
    t.integer "nota1"
    t.integer "nota2"
    t.integer "nota3"
    t.integer "nota4"
    t.integer "nota5"
    t.decimal "promhabitos"
    t.integer "nota6"
    t.integer "nota7"
    t.integer "nota8"
    t.integer "nota9"
    t.integer "nota10"
    t.decimal "promvocacion"
    t.integer "nota11"
    t.integer "nota12"
    t.integer "nota13"
    t.integer "nota14"
    t.integer "nota15"
    t.decimal "promsalud"
    t.string "observacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "estudiante_id"
    t.bigint "user_id"
    t.boolean "estado", default: true
    t.index ["estudiante_id"], name: "index_informes_on_estudiante_id"
    t.index ["user_id"], name: "index_informes_on_user_id"
  end

  create_table "prioridads", force: :cascade do |t|
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rols", force: :cascade do |t|
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "estado", default: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre"
    t.string "apellidopa"
    t.string "apellidoma"
    t.integer "rol_id"
    t.string "telefono"
    t.integer "facultad_id"
    t.date "fecha_nacimiento"
    t.boolean "estado", default: true
    t.string "rut"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "alerta", "informes"
  add_foreign_key "alerta", "prioridads"
  add_foreign_key "carreras", "facultads"
  add_foreign_key "estudiantes", "carreras"
  add_foreign_key "informes", "estudiantes"
  add_foreign_key "informes", "users"
  add_foreign_key "users", "facultads"
  add_foreign_key "users", "rols"
end

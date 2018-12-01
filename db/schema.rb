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

ActiveRecord::Schema.define(version: 2018_11_27_001436) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alerta", force: :cascade do |t|
    t.boolean "completado"
    t.integer "ID_informe"
    t.integer "prioridad_ID"
    t.date "fecha_recepcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carreras", force: :cascade do |t|
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "constancia", force: :cascade do |t|
    t.integer "id_Profesional"
    t.date "fecha"
    t.text "objetivo"
    t.float "id_nota"
    t.text "observacion"
    t.float "prom1"
    t.float "prom2"
    t.float "prom3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estudiantes", force: :cascade do |t|
    t.integer "rut"
    t.string "nombre"
    t.string "apellido_pat"
    t.string "apellido_mat"
    t.string "correo"
    t.boolean "tutor"
    t.string "carrera"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facultads", force: :cascade do |t|
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "informe_tutors", force: :cascade do |t|
    t.integer "estudiante_ID"
    t.date "fecha"
    t.integer "nota_ID"
    t.text "objetivo"
    t.text "observaciones"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nota", force: :cascade do |t|
    t.integer "ID_nota"
    t.text "descripcion"
    t.decimal "prom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prioridads", force: :cascade do |t|
    t.integer "ID_prio"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profesionals", force: :cascade do |t|
    t.integer "rut"
    t.string "nombre"
    t.string "apellido_paterno"
    t.string "apellido_materno"
    t.string "tipo_profesional"
    t.string "correo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profesions", force: :cascade do |t|
    t.text "Descripcion"
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

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

ActiveRecord::Schema.define(version: 2018_12_06_194558) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alerta", force: :cascade do |t|
    t.integer "informeid"
    t.integer "usuarioid"
    t.integer "prioridadid"
    t.date "fecharecepcion"
    t.decimal "porcentajegeneral"
    t.integer "observacionid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carreras", force: :cascade do |t|
    t.string "nombrecarrera"
    t.string "codigo"
    t.string "facultad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estudiantes", force: :cascade do |t|
    t.string "nombreestudiante"
    t.decimal "nem"
    t.string "situacioneconomica"
    t.string "colegio"
    t.decimal "ranking"
    t.integer "usuarioid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facultads", force: :cascade do |t|
    t.string "nombrefacultad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "informes", force: :cascade do |t|
    t.integer "estudianteid"
    t.integer "usuarioid"
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
    t.text "observacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prioridads", force: :cascade do |t|
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profesionals", force: :cascade do |t|
    t.string "nombre"
    t.string "apellidopat"
    t.string "apellidomat"
    t.string "tipoprofesionid"
    t.string "correo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rols", force: :cascade do |t|
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombreusuario"
    t.string "apellidopat"
    t.string "apellidomat"
    t.string "correo"
    t.integer "rolid"
    t.integer "telefono"
    t.string "contrasena"
    t.integer "facultadid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

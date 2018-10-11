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

ActiveRecord::Schema.define(version: 2018_10_11_212103) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "detalleparametros", force: :cascade do |t|
    t.integer "idparametro"
    t.string "nombre"
    t.bigint "parametro_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parametro_id"], name: "index_detalleparametros_on_parametro_id"
  end

  create_table "meta", force: :cascade do |t|
    t.integer "idusuario"
    t.integer "iddetalleparametro"
    t.integer "idreto"
    t.datetime "Fechaexpiracion"
    t.integer "cantidad"
    t.bigint "reto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reto_id"], name: "index_meta_on_reto_id"
  end

  create_table "parametros", force: :cascade do |t|
    t.integer "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "puntoecologicos", force: :cascade do |t|
    t.decimal "ubicacionx"
    t.decimal "ubicaciony"
    t.string "nombre"
    t.string "idresponsable"
    t.datetime "fechainicio"
    t.datetime "fechacierre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recoleccions", force: :cascade do |t|
    t.integer "Idretousuario"
    t.integer "idusu_invitado"
    t.integer "iddetalleparametro"
    t.integer "idredencion"
    t.integer "idpuntorecoleccion"
    t.string "estado"
    t.datetime "fecha"
    t.integer "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "redencions", force: :cascade do |t|
    t.integer "idredencion"
    t.integer "idusuario"
    t.integer "idpremio"
    t.datetime "fecharedencion"
    t.integer "Cantidadpremio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "retos", force: :cascade do |t|
    t.integer "idusuario_origina"
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "retousuarios", force: :cascade do |t|
    t.integer "idusu_invitado"
    t.string "lema"
    t.bigint "reto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reto_id"], name: "index_retousuarios_on_reto_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "venta", force: :cascade do |t|
    t.integer "iddetalleparametro"
    t.integer "idredencion"
    t.datetime "fechaventa"
    t.integer "cantidad"
    t.integer "valorunidad"
    t.integer "total"
    t.string "donacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "detalleparametros", "parametros"
  add_foreign_key "meta", "retos"
  add_foreign_key "retousuarios", "retos"
end

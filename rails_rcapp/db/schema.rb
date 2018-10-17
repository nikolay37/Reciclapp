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

ActiveRecord::Schema.define(version: 2018_10_13_185013) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "detalleparametros", force: :cascade do |t|
    t.string "nombre"
    t.bigint "parametros_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parametros_id"], name: "index_detalleparametros_on_parametros_id"
  end

  create_table "meta", force: :cascade do |t|
    t.datetime "fechaexpiracion"
    t.integer "cantidad"
    t.string "nota"
    t.bigint "retos_id"
    t.bigint "detalleparametros_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["detalleparametros_id"], name: "index_meta_on_detalleparametros_id"
    t.index ["retos_id"], name: "index_meta_on_retos_id"
  end

  create_table "parametros", force: :cascade do |t|
    t.string "nombre"
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
    t.bigint "detalleparametros_id"
    t.bigint "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["detalleparametros_id"], name: "index_puntoecologicos_on_detalleparametros_id"
    t.index ["users_id"], name: "index_puntoecologicos_on_users_id"
  end

  create_table "recoleccions", force: :cascade do |t|
    t.integer "idventa"
    t.integer "iddetalleparametro"
    t.integer "idredencion"
    t.integer "idpuntorecoleccion"
    t.string "estado"
    t.datetime "fecha"
    t.integer "cantidad"
    t.string "nota"
    t.bigint "retousuarios_id"
    t.bigint "detalleparametros_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["detalleparametros_id"], name: "index_recoleccions_on_detalleparametros_id"
    t.index ["retousuarios_id"], name: "index_recoleccions_on_retousuarios_id"
  end

  create_table "redencions", force: :cascade do |t|
    t.integer "idusuario"
    t.datetime "fecharedencion"
    t.integer "Cantidadpremio"
    t.integer "disponible"
    t.string "nota"
    t.bigint "detalleparametros_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["detalleparametros_id"], name: "index_redencions_on_detalleparametros_id"
  end

  create_table "retos", force: :cascade do |t|
    t.integer "nombre"
    t.string "patrocinadox"
    t.bigint "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_retos_on_users_id"
  end

  create_table "retousuarios", force: :cascade do |t|
    t.string "lema"
    t.string "nota"
    t.bigint "retos_id"
    t.bigint "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["retos_id"], name: "index_retousuarios_on_retos_id"
    t.index ["users_id"], name: "index_retousuarios_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cedula"
    t.string "nombre"
    t.string "apellido"
    t.string "celular"
    t.string "fechanacimiento"
    t.string "direccion"
    t.string "barrio"
    t.string "edificio"
    t.string "genero"
    t.string "empresa"
    t.string "numeroeaab"
    t.string "jac"
    t.string "perfil_id"
    t.string "localidad_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "venta", force: :cascade do |t|
    t.datetime "fechaventa"
    t.integer "cantidad"
    t.integer "valorunidad"
    t.integer "total"
    t.string "donacion"
    t.string "comprador"
    t.bigint "detalleparametros_id"
    t.bigint "redencions_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["detalleparametros_id"], name: "index_venta_on_detalleparametros_id"
    t.index ["redencions_id"], name: "index_venta_on_redencions_id"
  end

  add_foreign_key "detalleparametros", "parametros", column: "parametros_id"
  add_foreign_key "meta", "detalleparametros", column: "detalleparametros_id"
  add_foreign_key "meta", "retos", column: "retos_id"
  add_foreign_key "puntoecologicos", "detalleparametros", column: "detalleparametros_id"
  add_foreign_key "puntoecologicos", "users", column: "users_id"
  add_foreign_key "recoleccions", "detalleparametros", column: "detalleparametros_id"
  add_foreign_key "recoleccions", "retousuarios", column: "retousuarios_id"
  add_foreign_key "redencions", "detalleparametros", column: "detalleparametros_id"
  add_foreign_key "retos", "users", column: "users_id"
  add_foreign_key "retousuarios", "retos", column: "retos_id"
  add_foreign_key "retousuarios", "users", column: "users_id"
  add_foreign_key "venta", "detalleparametros", column: "detalleparametros_id"
  add_foreign_key "venta", "redencions", column: "redencions_id"
end

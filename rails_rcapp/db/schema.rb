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

ActiveRecord::Schema.define(version: 2018_10_10_211803) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "detalleparametros", force: :cascade do |t|
    t.integer "iddetalleparametro"
    t.integer "idparametro"
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meta", force: :cascade do |t|
    t.integer "Idmeta"
    t.integer "idusuario"
    t.integer "iddetalleparametro"
    t.integer "idreto"
    t.datetime "Fechaexpiracion"
    t.integer "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parametros", force: :cascade do |t|
    t.integer "idparametro"
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "puntoecologicos", force: :cascade do |t|
    t.integer "idpuntoecologico"
    t.decimal "Ubicacionx"
    t.decimal "Ubicaciony"
    t.string "Nombre"
    t.integer "idresponsable"
    t.datetime "Fechainicio"
    t.datetime "Fechacierre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recoleccions", force: :cascade do |t|
    t.integer "idrecoleccion"
    t.integer "Idretousuario"
    t.integer "idusu_invitado"
    t.integer "iddetalleparametro"
    t.integer "idredencion"
    t.integer "idpuntorecoleccion"
    t.string "Estado"
    t.datetime "Fecha"
    t.integer "Cantidad"
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
    t.integer "Idreto"
    t.integer "idusuario_origina"
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "retousuarios", force: :cascade do |t|
    t.integer "idreto"
    t.integer "idusu_invitado"
    t.integer "lema"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.integer "idusuario"
    t.string "nombre"
    t.string "apellido"
    t.string "celular"
    t.string "email"
    t.datetime "fechanacimiento"
    t.string "direccion"
    t.string "barrio"
    t.string "edificio"
    t.string "genero"
    t.string "empresa"
    t.string "clienteacueducto"
    t.string "jac"
    t.integer "idperfildetpar"
    t.integer "idlocalidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "venta", force: :cascade do |t|
    t.integer "idventas"
    t.integer "idpuntoecologico"
    t.integer "iddetalleparametro"
    t.datetime "fechaventa"
    t.integer "cantidad"
    t.integer "valor"
    t.string "donacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

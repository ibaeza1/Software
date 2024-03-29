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

ActiveRecord::Schema.define(version: 2019_11_24_231827) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "comentarios", force: :cascade do |t|
    t.string "restaurante_o_plato"
    t.string "usuario"
    t.datetime "fecha_y_hora"
    t.text "contenido"
    t.decimal "puntaje_de_reputacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ordenes", force: :cascade do |t|
    t.string "platos_pedidos_en_la_orden"
    t.decimal "precio_final_a_pagar"
    t.string "medio_de_pago"
    t.string "direccion_de_envio"
    t.time "hora_estimada_de_entrega"
    t.string "estado_del_pedido"
    t.text "notas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "platos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre"
    t.decimal "precio"
    t.text "descripcion"
    t.integer "cantidad_de_personas_sugeridas"
    t.integer "valoracion"

  end

  create_table "restaurantes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "titulo"
    t.string "correo"
    t.string "direccion"
    t.integer "valoracion"
    t.string "telefono"
    t.string "url"
    t.string "imagen"
  end

  create_table "users", force: :cascade do |t|

    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end

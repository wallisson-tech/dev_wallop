# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2025_05_26_182657) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "link"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tabelaUsuario", id: :decimal, force: :cascade do |t|
    t.string "nome"
    t.string "linux", comment: "ubuntu"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "description", null: false
    t.date "due_date"
    t.boolean "done", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "parent_id"
    t.index ["parent_id"], name: "index_tasks_on_parent_id"
  end

  add_foreign_key "tasks", "tasks", column: "parent_id"
end

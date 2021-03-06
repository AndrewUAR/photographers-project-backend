# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_21_200213) do

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

  create_table "album_pictures", force: :cascade do |t|
    t.bigint "album_id", null: false
    t.bigint "picture_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["album_id"], name: "index_album_pictures_on_album_id"
    t.index ["picture_id"], name: "index_album_pictures_on_picture_id"
  end

  create_table "albums", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "photographer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["photographer_id"], name: "index_albums_on_photographer_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "picture_id", null: false
    t.bigint "photographer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["photographer_id"], name: "index_comments_on_photographer_id"
    t.index ["picture_id"], name: "index_comments_on_picture_id"
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "picture_id", null: false
    t.bigint "photographer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["photographer_id"], name: "index_likes_on_photographer_id"
    t.index ["picture_id"], name: "index_likes_on_picture_id"
  end

  create_table "photographers", force: :cascade do |t|
    t.string "name"
    t.date "birthdate"
    t.text "bio"
    t.date "start_date"
    t.string "city"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "picture_categories", force: :cascade do |t|
    t.bigint "picture_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_picture_categories_on_category_id"
    t.index ["picture_id"], name: "index_picture_categories_on_picture_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "photographer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["photographer_id"], name: "index_pictures_on_photographer_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "album_pictures", "albums"
  add_foreign_key "album_pictures", "pictures"
  add_foreign_key "albums", "photographers"
  add_foreign_key "comments", "photographers"
  add_foreign_key "comments", "pictures"
  add_foreign_key "likes", "photographers"
  add_foreign_key "likes", "pictures"
  add_foreign_key "picture_categories", "categories"
  add_foreign_key "picture_categories", "pictures"
  add_foreign_key "pictures", "photographers"
end

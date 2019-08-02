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

ActiveRecord::Schema.define(version: 2019_03_18_061221) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "daftar_kursus", force: :cascade do |t|
    t.integer "murid_id"
    t.integer "jenis_kursu_id"
    t.integer "instruktur_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instrukturs", force: :cascade do |t|
    t.string "nama"
    t.integer "jenis_kelamin"
    t.string "tmp_lahir"
    t.date "tgl_lahir"
    t.text "alamat"
    t.string "no_tlp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jenis_kursus", force: :cascade do |t|
    t.string "jenis_kursus"
    t.integer "lama_belajar"
    t.integer "tarif"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "murids", force: :cascade do |t|
    t.string "nama"
    t.integer "jenis_kelamin"
    t.string "tmp_lahir"
    t.date "tgl_lahir"
    t.text "alamat"
    t.string "no_tlp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "jadwal"
    t.string "nama_pgl"
    t.integer "kode_pos"
    t.string "sekolah"
    t.string "kelas"
    t.string "kewarganegaraan"
    t.string "laporan"
    t.string "agama"
    t.string "hobi"
    t.string "ket_kerja_atau_belajar"
    t.string "nama_ortu"
    t.string "kependudukan_ortu"
    t.string "alamat_ortu"
    t.string "program"
    t.date "mulai_belajar"
    t.string "golongan_darah"
  end

  create_table "users", force: :cascade do |t|
    t.string "userid"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

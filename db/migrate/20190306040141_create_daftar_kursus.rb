class CreateDaftarKursus < ActiveRecord::Migration[5.2]
  def change
    create_table :daftar_kursus do |t|
      t.integer :id_murid
      t.integer :id_jenis_kursus
      t.integer :id_instruktur

      t.timestamps
    end
  end
end

class CreateJenisKursus < ActiveRecord::Migration[5.2]
  def change
    create_table :jenis_kursus do |t|
      t.string :jenis_kursus
      t.integer :lama_belajar
      t.integer :tarif

      t.timestamps
    end
  end
end

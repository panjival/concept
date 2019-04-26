class CreateInstrukturs < ActiveRecord::Migration[5.2]
  def change
    create_table :instrukturs do |t|
      t.string :nama
      t.integer :jenis_kelamin
      t.string :tmp_lahir
      t.date :tgl_lahir
      t.text :alamat
      t.string :no_tlp

      t.timestamps
    end
  end
end

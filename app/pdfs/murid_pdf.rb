require "prawn"
require "prawn/table"
class MuridPdf < Prawn::Document
    def initialize(murid)
        super()
        @murid = murid
        siswa
        line_items
        ttd
    end

    def siswa
        text "NEW CONCEPT", :align => :center, :size => 18, style: :bold
        move_down 10
        text "Jl. Raya Griya Asri 2 Blok 1-8 No.6 Tambun - Bekasi", :align => :center
        
        text "Telp. 081211716723 | Email: ncgriyaasri2@gmail.com", :align => :center,:size => 10
        stroke_horizontal_rule

        move_down 20
        text "Nama Murid          : #{@murid.nama}", size: 14, :width => 100
        text " 
        Jenis Kursus yang diambil : #{@murid.tmp_lahir}
        Lama Belajar              : #{@murid.tmp_lahir}
        Nama Instruktur           : #{@murid.tgl_lahir}", size: 14
    end

    def line_items
        puts "masuk line"
        move_down 20
        table  [["nama", "jenis kelamin", "tempat lahir", "alamat"],[@murid.nama, @murid.jenis_kelamin, @murid.tmp_lahir, @murid.alamat]] do
            row(0).font_style = :bold
            columns(1..3).align = :right
            self.row_colors = ['DDDDDD', 'FFFFFF']
            self.header = true
        end
    end
    def ttd
    move_down 200
    text "......,..,..,.... Griya Bukut Jaya: #{cursor}", :align => :right
    end

    def line_item_rows
        puts "masuk eko pak"
       [["nama", "jenis kelamin", "tempat lahir", "alamat"]] +
       @murid.line_items.tap do |item|
            [item.nama, item.jenis_kelamin, item.tmp_lahir, item.alamat]
        end
    end
end
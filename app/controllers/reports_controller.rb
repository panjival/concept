class ReportsController < ApplicationController
	before_action :authorize	
	def murid
		# List Report
		@daftar_kursu = if params[:mur]
			DaftarKursu.find_by_sql(["select jenis_kursu_id, instruktur_id, jenis_kursus.tarif, jenis_kursus.lama_belajar
			from daftar_kursus,murids,jenis_kursus
			where daftar_kursus.murid_id=murids.id and daftar_kursus.jenis_kursu_id=jenis_kursus.id
			and murids.id=?",params[:mur]])
		else
			DaftarKursu.find_by_sql("select jenis_kursu_id, instruktur_id, jenis_kursus.tarif, jenis_kursus.lama_belajar
				from daftar_kursus,murids,jenis_kursus
				where daftar_kursus.murid_id=murids.id and daftar_kursus.jenis_kursu_id=jenis_kursus.id") rescue nil
		end
		rescue
			if @daftar_kursu.nil?
				flash[:danger] = 'Silakan Refresh terlebih dahulu'
				redirect_to request.referrer
			end
	end
end

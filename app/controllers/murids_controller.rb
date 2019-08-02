class MuridsController < ApplicationController
  before_action :authorize,      only: [:index, :show, :edit, :update, :destroy]
  
  def index
    @murids = Murid.all
  end

  def show
    @murid = Murid.find(params[:id])
  end

  def new
    @murid = Murid.new
  end

  def create
    @murid = Murid.create(murid_params)
    
    redirect_to request.referrer, success: "Berhasil disimpan"
  end

  def edit
    @murid = Murid.find(params[:id])
  end

  def update
    @murid = Murid.find(params[:id])
    @murid.update(murid_params)

    redirect_to murids_path
  end

  def destroy
    @murid = Murid.find(params[:id])
    if @murid.destroy
    redirect_to murids_path, info: "Berhasil dihapus"
    else
      redirect_to murids_path, danger: "data tidak dapat dihapus, karena sudah terdaftar"
    end
  end

  private
  def murid_params
    params.require(:murid).permit(:nama, :jenis_kelamin, :tmp_lahir, :tgl_lahir, :alamat, :no_tlp, :jadwal, :nama_pgl, :kode_pos,:sekolah, :kelas, :kewarganegaraan, :laporan, :agama, :hobi, :ket_kerja_atau_belajar, :nama_ortu, :kependudukan_ortu, :alamat_ortu, :program, :mulai_belajar, :golongan_darah, :panggilan)
  end
end

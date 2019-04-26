class MuridsController < ApplicationController
  before_action :authorize, only: [:edit, :destroy]
  
  def index
    @murids = if params[:term]
      Murid.where("lower(nama) LIKE ?", "%#{params[:term].downcase}%").order('id DESC').paginate(:page => params[:page], per_page: 5)
    else
      Murid.paginate(:page => params[:page], per_page: 5)
    end
  end

  def show
    @murid = Murid.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        pdf = MuridPdf.new(@murid)
        send_data pdf.render, filename: "murid_#{@murid.nama}.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end
  end

  def new
    @murid = Murid.new
  end

  def create
    @murid = Murid.create(murid_params)
    
      redirect_to murids_path, success: "Berhasil disimpan"
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
    @murid.destroy
    redirect_to murids_path, info: "Berhasil dihapus"
   
  end

  private
  def murid_params
    params.require(:murid).permit(:nama, :jenis_kelamin, :tmp_lahir, :tgl_lahir, :alamat, :no_tlp, :jadwal)
  end
end

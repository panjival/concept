class InstruktursController < ApplicationController
  before_action :authorize
   def index
    @instrukturs = if params[:term]
      Instruktur.where('lower(nama) LIKE ?', "%#{params[:term].downcase}%").order('id DESC')
    else
      Instruktur.all
    end
  end

  def show
    @instruktur = Instruktur.find(params[:id])
  end

  def new
    @instruktur = Instruktur.new
  end

  def create
    @instruktur = Instruktur.create(instruktur_params)

    redirect_to @instruktur
  end

  def edit
    @instruktur = Instruktur.find(params[:id])
  end

  def update
    @instruktur = Instruktur.find(params[:id])
    @instruktur.update(instruktur_params)

    redirect_to instruktur_path
  end

  def destroy
    @instruktur = Instruktur.find(params[:id])
    if @instruktur.destroy
      redirect_to instrukturs_path, info: "data berhasil di hapus"
    else
      redirect_to instrukturs_path, danger: "data tidak dapat dihapus, karena sudah terdaftar"
    end
  end

  private
  def instruktur_params
    params.require(:instruktur).permit(:nama, :jenis_kelamin, :tmp_lahir, :tgl_lahir, :alamat, :no_tlp)
  end
end

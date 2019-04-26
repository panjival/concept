class JenisKursusController < ApplicationController
  before_action :authorize
  def index
    @jenis_kursus = if params[:term]
      JenisKursu.where('lower(jenis_kursus) LIKE ?', "%#{params[:term].downcase}%").order('id DESC')
    else
      JenisKursu.all
    end
  end

  def show
    @jenis_kursu = JenisKursu.find(params[:id])
  end

  def new
    @jenis_kursu = JenisKursu.new
  end

  def create
    @jenis_kursu = JenisKursu.create(jenis_params)

    redirect_to @jenis_kursu
  end

  def edit
    @jenis_kursu =JenisKursu.find(params[:id])
  end

  def update
    @jenis_kursu = JenisKursu.find(params[:id])
    @jenis_kursu.update(jenis_params)

    redirect_to jenis_kursu_path
  end

  def destroy
    @jenis_kursu = JenisKursu.find(params[:id])
    if @jenis_kursu.destroy

    redirect_to jenis_kursus_path
    else
      redirect_to jenis_kursus_path, danger: "tidak bisa dihapus"
  end
end

  private
  def jenis_params
    params.require(:jenis_kursu).permit(:jenis_kursus,:lama_belajar,:tarif)
  end
end

class RedencionesController < ApplicationController
  before_action :set_redencione, only: [:show, :edit, :update, :destroy]

  # GET /redenciones
  # GET /redenciones.json
  def index
    @redenciones = Redencione.all
  end

  # GET /redenciones/1
  # GET /redenciones/1.json
  def show
  end

  # GET /redenciones/new
  def new
    @redencione = Redencione.new
  end

  # GET /redenciones/1/edit
  def edit
  end

  # POST /redenciones
  # POST /redenciones.json
  def create
    @redencione = Redencione.new(redencione_params)

    respond_to do |format|
      if @redencione.save
        format.html { redirect_to @redencione, notice: 'Redencione was successfully created.' }
        format.json { render :show, status: :created, location: @redencione }
      else
        format.html { render :new }
        format.json { render json: @redencione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /redenciones/1
  # PATCH/PUT /redenciones/1.json
  def update
    respond_to do |format|
      if @redencione.update(redencione_params)
        format.html { redirect_to @redencione, notice: 'Redencione was successfully updated.' }
        format.json { render :show, status: :ok, location: @redencione }
      else
        format.html { render :edit }
        format.json { render json: @redencione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /redenciones/1
  # DELETE /redenciones/1.json
  def destroy
    @redencione.destroy
    respond_to do |format|
      format.html { redirect_to redenciones_url, notice: 'Redencione was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_redencione
      @redencione = Redencione.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def redencione_params
      params.require(:redencione).permit(:idusuario, :fecharedencion, :Cantidadpremio, :disponible, :nota, :detalleparametros_id)
    end
end

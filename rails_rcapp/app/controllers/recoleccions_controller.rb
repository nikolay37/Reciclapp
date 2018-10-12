class RecoleccionsController < ApplicationController
  before_action :set_recoleccion, only: [:show, :edit, :update, :destroy]

  # GET /recoleccions
  # GET /recoleccions.json
  def index
    @recoleccions = Recoleccion.all
  end

  # GET /recoleccions/1
  # GET /recoleccions/1.json
  def show
  end

  # GET /recoleccions/new
  def new
    @recoleccion = Recoleccion.new
  end

  # GET /recoleccions/1/edit
  def edit
  end

  # POST /recoleccions
  # POST /recoleccions.json
  def create
    @recoleccion = Recoleccion.new(recoleccion_params)

    respond_to do |format|
      if @recoleccion.save
        format.html { redirect_to @recoleccion, notice: 'Recoleccion was successfully created.' }
        format.json { render :show, status: :created, location: @recoleccion }
      else
        format.html { render :new }
        format.json { render json: @recoleccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recoleccions/1
  # PATCH/PUT /recoleccions/1.json
  def update
    respond_to do |format|
      if @recoleccion.update(recoleccion_params)
        format.html { redirect_to @recoleccion, notice: 'Recoleccion was successfully updated.' }
        format.json { render :show, status: :ok, location: @recoleccion }
      else
        format.html { render :edit }
        format.json { render json: @recoleccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recoleccions/1
  # DELETE /recoleccions/1.json
  def destroy
    @recoleccion.destroy
    respond_to do |format|
      format.html { redirect_to recoleccions_url, notice: 'Recoleccion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recoleccion
      @recoleccion = Recoleccion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recoleccion_params
      params.require(:recoleccion).permit(:idusu_invitado, :iddetalleparametro, :idredencion, :idpuntorecoleccion, :estado, :fecha, :cantidad, :idventa, :retousuario_id, :detalleparametro_id)
    end
end

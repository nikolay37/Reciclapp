class PuntoecologicosController < ApplicationController
  before_action :set_puntoecologico, only: [:show, :edit, :update, :destroy]

  # GET /puntoecologicos
  # GET /puntoecologicos.json
  def index
    @puntoecologicos = Puntoecologico.all
  end

  # GET /puntoecologicos/1
  # GET /puntoecologicos/1.json
  def show
  end

  # GET /puntoecologicos/new
  def new
    @puntoecologico = Puntoecologico.new
  end

  # GET /puntoecologicos/1/edit
  def edit
  end

  # POST /puntoecologicos
  # POST /puntoecologicos.json
  def create
    @puntoecologico = Puntoecologico.new(puntoecologico_params)

    respond_to do |format|
      if @puntoecologico.save
        format.html { redirect_to @puntoecologico, notice: 'Puntoecologico was successfully created.' }
        format.json { render :show, status: :created, location: @puntoecologico }
      else
        format.html { render :new }
        format.json { render json: @puntoecologico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /puntoecologicos/1
  # PATCH/PUT /puntoecologicos/1.json
  def update
    respond_to do |format|
      if @puntoecologico.update(puntoecologico_params)
        format.html { redirect_to @puntoecologico, notice: 'Puntoecologico was successfully updated.' }
        format.json { render :show, status: :ok, location: @puntoecologico }
      else
        format.html { render :edit }
        format.json { render json: @puntoecologico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /puntoecologicos/1
  # DELETE /puntoecologicos/1.json
  def destroy
    @puntoecologico.destroy
    respond_to do |format|
      format.html { redirect_to puntoecologicos_url, notice: 'Puntoecologico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_puntoecologico
      @puntoecologico = Puntoecologico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def puntoecologico_params
      params.require(:puntoecologico).permit(:ubicacionx, :ubicaciony, :nombre, :idresponsable, :fechainicio, :fechacierre)
    end
end

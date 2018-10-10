class RetosController < ApplicationController
  before_action :set_reto, only: [:show, :edit, :update, :destroy]

  # GET /retos
  # GET /retos.json
  def index
    @retos = Reto.all
  end

  # GET /retos/1
  # GET /retos/1.json
  def show
  end

  # GET /retos/new
  def new
    @reto = Reto.new
  end

  # GET /retos/1/edit
  def edit
  end

  # POST /retos
  # POST /retos.json
  def create
    @reto = Reto.new(reto_params)

    respond_to do |format|
      if @reto.save
        format.html { redirect_to @reto, notice: 'Reto was successfully created.' }
        format.json { render :show, status: :created, location: @reto }
      else
        format.html { render :new }
        format.json { render json: @reto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /retos/1
  # PATCH/PUT /retos/1.json
  def update
    respond_to do |format|
      if @reto.update(reto_params)
        format.html { redirect_to @reto, notice: 'Reto was successfully updated.' }
        format.json { render :show, status: :ok, location: @reto }
      else
        format.html { render :edit }
        format.json { render json: @reto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /retos/1
  # DELETE /retos/1.json
  def destroy
    @reto.destroy
    respond_to do |format|
      format.html { redirect_to retos_url, notice: 'Reto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reto
      @reto = Reto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reto_params
      params.require(:reto).permit(:Idreto, :idusuario_origina, :nombre)
    end
end

class MetasxretosController < ApplicationController
  before_action :set_metasxreto, only: [:show, :edit, :update, :destroy]

  # GET /metasxretos
  # GET /metasxretos.json
  def index
    @metasxretos = Metasxreto.all
  end

  # GET /metasxretos/1
  # GET /metasxretos/1.json
  def show
  end

  # GET /metasxretos/new
  def new
    @metasxreto = Metasxreto.new
  end

  # GET /metasxretos/1/edit
  def edit
  end

  # POST /metasxretos
  # POST /metasxretos.json
  def create
    @metasxreto = Metasxreto.new(metasxreto_params)

    respond_to do |format|
      if @metasxreto.save
        format.html { redirect_to @metasxreto, notice: 'Metasxreto was successfully created.' }
        format.json { render :show, status: :created, location: @metasxreto }
      else
        format.html { render :new }
        format.json { render json: @metasxreto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metasxretos/1
  # PATCH/PUT /metasxretos/1.json
  def update
    respond_to do |format|
      if @metasxreto.update(metasxreto_params)
        format.html { redirect_to @metasxreto, notice: 'Metasxreto was successfully updated.' }
        format.json { render :show, status: :ok, location: @metasxreto }
      else
        format.html { render :edit }
        format.json { render json: @metasxreto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metasxretos/1
  # DELETE /metasxretos/1.json
  def destroy
    @metasxreto.destroy
    respond_to do |format|
      format.html { redirect_to metasxretos_url, notice: 'Metasxreto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metasxreto
      @metasxreto = Metasxreto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metasxreto_params
      params.require(:metasxreto).permit(:fechaexpiracion, :cantidad, :nota, :retos_id, :detalleparametros_id)
    end
end

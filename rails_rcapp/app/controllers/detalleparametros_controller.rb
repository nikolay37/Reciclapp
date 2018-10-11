class DetalleparametrosController < ApplicationController
  before_action :set_detalleparametro, only: [:show, :edit, :update, :destroy]

  # GET /detalleparametros
  # GET /detalleparametros.json
  def index
    @detalleparametros = Detalleparametro.all
  end

  # GET /detalleparametros/1
  # GET /detalleparametros/1.json
  def show
  end

  # GET /detalleparametros/new
  def new
    @detalleparametro = Detalleparametro.new
  end

  # GET /detalleparametros/1/edit
  def edit
  end

  # POST /detalleparametros
  # POST /detalleparametros.json
  def create
    @detalleparametro = Detalleparametro.new(detalleparametro_params)

    respond_to do |format|
      if @detalleparametro.save
        format.html { redirect_to @detalleparametro, notice: 'Detalleparametro was successfully created.' }
        format.json { render :show, status: :created, location: @detalleparametro }
      else
        format.html { render :new }
        format.json { render json: @detalleparametro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detalleparametros/1
  # PATCH/PUT /detalleparametros/1.json
  def update
    respond_to do |format|
      if @detalleparametro.update(detalleparametro_params)
        format.html { redirect_to @detalleparametro, notice: 'Detalleparametro was successfully updated.' }
        format.json { render :show, status: :ok, location: @detalleparametro }
      else
        format.html { render :edit }
        format.json { render json: @detalleparametro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detalleparametros/1
  # DELETE /detalleparametros/1.json
  def destroy
    @detalleparametro.destroy
    respond_to do |format|
      format.html { redirect_to detalleparametros_url, notice: 'Detalleparametro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detalleparametro
      @detalleparametro = Detalleparametro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detalleparametro_params
      params.require(:detalleparametro).permit(:idparametro, :nombre, :parametro_id)
    end
end

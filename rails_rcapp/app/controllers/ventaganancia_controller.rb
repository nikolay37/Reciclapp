class VentagananciaController < ApplicationController
  before_action :set_ventaganancium, only: [:show, :edit, :update, :destroy]

  # GET /ventaganancia
  # GET /ventaganancia.json
  def index
    @ventaganancia = Ventaganancium.all
  end

  # GET /ventaganancia/1
  # GET /ventaganancia/1.json
  def show
  end

  # GET /ventaganancia/new
  def new
    @ventaganancium = Ventaganancium.new
  end

  # GET /ventaganancia/1/edit
  def edit
  end

  # POST /ventaganancia
  # POST /ventaganancia.json
  def create
    @ventaganancium = Ventaganancium.new(ventaganancium_params)

    respond_to do |format|
      if @ventaganancium.save
        format.html { redirect_to @ventaganancium, notice: 'Ventaganancium was successfully created.' }
        format.json { render :show, status: :created, location: @ventaganancium }
      else
        format.html { render :new }
        format.json { render json: @ventaganancium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ventaganancia/1
  # PATCH/PUT /ventaganancia/1.json
  def update
    respond_to do |format|
      if @ventaganancium.update(ventaganancium_params)
        format.html { redirect_to @ventaganancium, notice: 'Ventaganancium was successfully updated.' }
        format.json { render :show, status: :ok, location: @ventaganancium }
      else
        format.html { render :edit }
        format.json { render json: @ventaganancium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ventaganancia/1
  # DELETE /ventaganancia/1.json
  def destroy
    @ventaganancium.destroy
    respond_to do |format|
      format.html { redirect_to ventaganancia_url, notice: 'Ventaganancium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ventaganancium
      @ventaganancium = Ventaganancium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ventaganancium_params
      params.require(:ventaganancium).permit(:fechaventa, :cantidad, :valorunidad, :total, :donacion, :comprador, :detalleparametros_id, :redenciones_id)
    end
end

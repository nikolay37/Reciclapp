class RedencionsController < ApplicationController
  before_action :set_redencion, only: [:show, :edit, :update, :destroy]

  # GET /redencions
  # GET /redencions.json
  def index
    @redencions = Redencion.all
  end

  # GET /redencions/1
  # GET /redencions/1.json
  def show
  end

  # GET /redencions/new
  def new
    @redencion = Redencion.new
  end

  # GET /redencions/1/edit
  def edit
  end

  # POST /redencions
  # POST /redencions.json
  def create
    @redencion = Redencion.new(redencion_params)

    respond_to do |format|
      if @redencion.save
        format.html { redirect_to @redencion, notice: 'Redencion was successfully created.' }
        format.json { render :show, status: :created, location: @redencion }
      else
        format.html { render :new }
        format.json { render json: @redencion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /redencions/1
  # PATCH/PUT /redencions/1.json
  def update
    respond_to do |format|
      if @redencion.update(redencion_params)
        format.html { redirect_to @redencion, notice: 'Redencion was successfully updated.' }
        format.json { render :show, status: :ok, location: @redencion }
      else
        format.html { render :edit }
        format.json { render json: @redencion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /redencions/1
  # DELETE /redencions/1.json
  def destroy
    @redencion.destroy
    respond_to do |format|
      format.html { redirect_to redencions_url, notice: 'Redencion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_redencion
      @redencion = Redencion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def redencion_params
      params.require(:redencion).permit(:idusuario, :idpremio, :fecharedencion, :Cantidadpremio, :Cantidadpremio, :reto_id)
    end
end

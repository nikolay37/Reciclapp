class RetousuariosController < ApplicationController
  before_action :set_retousuario, only: [:show, :edit, :update, :destroy]

  # GET /retousuarios
  # GET /retousuarios.json
  def index
    @retousuarios = Retousuario.all
  end

  # GET /retousuarios/1
  # GET /retousuarios/1.json
  def show
  end

  # GET /retousuarios/new
  def new
    @retousuario = Retousuario.new
  end

  # GET /retousuarios/1/edit
  def edit
  end

  # POST /retousuarios
  # POST /retousuarios.json
  def create
    @retousuario = Retousuario.new(retousuario_params)

    respond_to do |format|
      if @retousuario.save
        format.html { redirect_to @retousuario, notice: 'Retousuario was successfully created.' }
        format.json { render :show, status: :created, location: @retousuario }
      else
        format.html { render :new }
        format.json { render json: @retousuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /retousuarios/1
  # PATCH/PUT /retousuarios/1.json
  def update
    respond_to do |format|
      if @retousuario.update(retousuario_params)
        format.html { redirect_to @retousuario, notice: 'Retousuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @retousuario }
      else
        format.html { render :edit }
        format.json { render json: @retousuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /retousuarios/1
  # DELETE /retousuarios/1.json
  def destroy
    @retousuario.destroy
    respond_to do |format|
      format.html { redirect_to retousuarios_url, notice: 'Retousuario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_retousuario
      @retousuario = Retousuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def retousuario_params
      params.require(:retousuario).permit(:idreto, :idusu_invitado, :lema)
    end
end

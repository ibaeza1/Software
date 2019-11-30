class RestaurantesController < ApplicationController
  before_action :set_restaurante, only: [:show, :edit, :update, :destroy]

  # GET /restaurantes
  # GET /restaurantes.json
  def index
    @restaurantes = Restaurante.all
  end

  # GET /restaurantes/1
  # GET /restaurantes/1.json
  def show
    @restaurantes = Restaurante.find(params[:id])
  end

  # GET /restaurantes/new
  def new
    @restaurantes = Restaurante.new
  end

  # GET /restaurantes/1/edit
  def edit
    @restaurantes = Restaurante.find(params[:id])
  end

  # POST /restaurantes
  # POST /restaurantes.json
  def create
    puts('1234556778888a88as8888')
    puts(restaurante_params)
    puts(params[:restaurante])
    puts('1234556778888a88as8888')
    @restaurantes = Restaurante.new(params[:restaurante].permit(:titulo, :correo, :direccion, :valoracion, :telefono, :url, :avatar))
    if @restaurantes.save
       redirect_to :action => "index"
    end
  end

  private
    def restaurante_params
      params.require(:restaurante).permit(:titulo, :correo, :direccion, :valoracion, :telefono, :url, :avatar)
    end

 
  # PATCH/PUT /restaurantes/1
  # PATCH/PUT /restaurantes/1.json
  def update
    respond_to do |format|
      if @restaurantes.update(restaurante_params)
        format.html { redirect_to @restaurante, notice: 'Restaurante was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurante }
      else
        format.html { render :edit }
        format.json { render json: @restaurante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurantes/1
  # DELETE /restaurantes/1.json
  def destroy
    @restaurantes.destroy
    respond_to do |format|
      format.html { redirect_to restaurantes_url, notice: 'Restaurante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurante
      @restaurantes = Restaurante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurante_params
      params.fetch(:restaurante, {})
    end

end

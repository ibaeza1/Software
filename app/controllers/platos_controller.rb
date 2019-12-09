class PlatosController < ApplicationController
 
  before_action :set_plato, only: [:show, :edit, :update, :destroy]
  # GET /platos
  # GET /platos.json
  def index
    @platos = Plato.all.order("created_at ASC")
  end

  # GET /platos/1
  # GET /platos/1.json

  def show
    @platos = Plato.where(:id => params[:id])
    if @platos.present?
      puts ("plato")
      puts (@platos)
    else
      puts("NO HAY PLATOS")
    end
  end

  # GET /platos/new
  def new
    @platos = Plato.new
  end

  # GET /platos/1/edit
  def edit
    @plato = Plato.find(params[:id])
  end

  # POST /platos
  # POST /platos.json
  def create
    @plato = Plato.new(plato_params)

    respond_to do |format|
      if @plato.save
        format.html { redirect_to restaurante_platos_path(@plato), notice: 'Plato was successfully created.' }
        format.json { render :show, status: :created, location: @restaurante }
      else
        format.html { render :new }
        format.json { render json: @plato.errors, status: :unprocessable_entity }
      end
    end
  end



  def update
    puts('---------------------------')
    respond_to do |format|
      puts('------------------###--------')

      if @platos.update(plato_params)
        puts('--------###--------###--------')

        format.html { redirect_to :action=> "index", notice: 'Plato was successfully updated.' }
        format.json { render :index, status: :ok, location: @plato }
      else
        format.html { render :edit }
        format.json { render json: @plato.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /platos/1
  # DELETE /platos/1.json
  def destroy
    @platos.destroy
    respond_to do |format|
      format.html { redirect_to platos_url, notice: 'Plato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plato
      @platos = Plato.find(params[:id])
    end



    def plato_params
      params.fetch( :plato, {})
    end



  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def plato_params
      params.require(:plato).permit(:nombre, :precio, :descripcion, :cantidad_de_personas_sugeridas, :valoracion)
    end
  end

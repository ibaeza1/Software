class ComentariosController < ApplicationController
  
  before_action :set_comentario, :only =>  [:show, :edit, :update, :destroy]

  # GET /comentarios
  # GET /comentarios.json
  def index
    @comentarios = Comentario.all.order("created_at ASC")
  end

  # GET /comentarios/1
  # GET /comentarios/1.json
  def show
    @comentarios = Comentario.where(:id => params[:id])

  end

  # GET /comentarios/new
  def new
    @comentarios = Comentario.new
  end

  # GET /comentarios/1/edit
  def edit
    @comentario = Comentario.find(params[:id])
  end

  # POST /comentarios
  # POST /comentarios.json
  def create
    @comentario = Comentario.new(comentario_params)

    respond_to do |format|
      if @comentario.save
        format.html { redirect_to restaurante_comentarios_path(@comentario), notice: 'Plato was successfully created.' }
        format.json { render :show, status: :created, location: @restaurante }
      else
        format.html { render :new }
        format.json { render json: @comentario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comentarios/1
  # PATCH/PUT /comentarios/1.json
  def update
    respond_to do |format|
      if @comentarios.update(comentario_params)
        format.html {redirect_to :action=> "index", notice: 'Restaurante was successfully updated.'}
        format.json { render :index, status: :ok, location: @comentario }
      else
        format.html { render :edit }
        format.json { render json: @comentario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comentarios/1
  # DELETE /comentarios/1.json
  def destroy
    @comentarios.destroy
      respond_to do |format|
        format.html { redirect_to comentarios_url, notice: 'Comentario was successfully destroyed.' }
        format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_comentario
    @comentarios = Comentario.find(params[:id])
  end

  def comentario_params
    params.fetch( :comentario, {})
  end



private
  # Never trust parameters from the scary internet, only allow the white list through.
  def comentario_params
    params.require(:comentario).permit(:restaurante_o_plato, :usuario, :fecha_y_hora, :contenido, :puntaje_de_reputacion)

  end
end
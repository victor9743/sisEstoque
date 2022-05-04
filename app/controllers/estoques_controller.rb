require 'csv'
class EstoquesController < ApplicationController
  before_action :set_estoque, only: %i[ show edit update destroy ]
  layout 'menuInicialApplication'

  # GET /estoques or /estoques.json
  def index
    @estoquesAll = Estoque.all
    @estoques = Estoque.all.page(params[:page])

    respond_to do |format|
      format.html
      format.csv { send_data @estoquesAll.to_csv(['id', 'Qtdentrada', 'Qtdsaida', 'Dataentrada', 'Datasaida', 'Valorentrada', 'Valorsaida']) }
    end
  end

  def import 
    Estoque.import(params[:file])
    redirect_to root_url, notice: "Relatório importado."
  end

  # GET /estoques/1 or /estoques/1.json
  def show
  end

  # GET /estoques/new
  def new
    @estoque = Estoque.new
  end

  # GET /estoques/1/edit
  def edit
  end

  # POST /estoques or /estoques.json
  def create
    @estoque = Estoque.new(estoque_params)

    respond_to do |format|
      if @estoque.save
        format.html { redirect_to estoques_url, notice: "Item adicionado com sucesso" }
        format.json { render :show, status: :created, location: @estoque }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @estoque.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estoques/1 or /estoques/1.json
  def update
    respond_to do |format|
      if @estoque.update(estoque_params)
        format.html { redirect_to estoque_url(@estoque), notice: "Estoque was successfully updated." }
        format.json { render :show, status: :ok, location: @estoque }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @estoque.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estoques/1 or /estoques/1.json
  def destroy
    @estoque.destroy

    respond_to do |format|
      format.html { redirect_to estoques_url, notice: "Estoque was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estoque
      @estoque = Estoque.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def estoque_params
      params.require(:estoque).permit(:qtdentrada, :qtdsaida, :dataentrada, :datasaida, :valorentrada, :valorsaida, :produto_id)
    end
end

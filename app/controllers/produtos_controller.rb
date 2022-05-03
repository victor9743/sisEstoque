require 'csv'
class ProdutosController < ApplicationController
  before_action :authenticate_user!
  layout 'menuInicialApplication'
  before_action :set_produto, only: %i[ edit update destroy ]

  # GET /produtos or /produtos.json
  def index
    @produtosAll = Produto.all
    @produtos = Produto.all.page(params[:page])

    respond_to do |format|
      format.html
      format.csv { send_data @produtosAll.to_csv(['id', 'nomeproduto', 'dtavalidade', 'codbarras']) }
    end
  end

  def import 
    Product.import(params[:file])
    redirect_to root_url, notice: "Relatório importados."
  end

  # GET /produtos/new
  def new
    @produto = Produto.new
  end

  # GET /produtos/1/edit
  def edit
  end

  # POST /produtos or /produtos.json
  def create
    @produto = Produto.new(produto_params)

    respond_to do |format|
      if @produto.save
        format.html { redirect_to produtos_url(@produto), notice: "Produto criado com sucesso" }
        format.json { render :index, status: :created, location: @produto }
      else
        format.html { render :new, status: :unprocessable_entity, notice: "erro" }
        format.json { render json: @produto.errors, status: :unprocessable_entity, notice: "erro" }
      end
    end
  end

  # PATCH/PUT /produtos/1 or /produtos/1.json
  def update
    respond_to do |format|
      if @produto.update(produto_params)
        format.html { redirect_to produtos_url(@produto), notice: "Produto salvo com sucesso" }
        format.json { render :index, status: :ok, location: @produto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produtos/1 or /produtos/1.json
  def destroy
    @produto.destroy

    respond_to do |format|
      format.html { redirect_to produtos_url, notice: "Produto was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produto
      @produto = Produto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def produto_params
      params.require(:produto).permit(:nomeproduto, :dtavalidade, :codbarras)
    end
end

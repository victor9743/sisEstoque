class TipoprodutosController < ApplicationController
  before_action :set_tipoproduto, only: %i[ show edit update destroy ]

  # GET /tipoprodutos or /tipoprodutos.json
  def index
    @tipoprodutos = Tipoproduto.all
  end

  # GET /tipoprodutos/1 or /tipoprodutos/1.json
  def show
  end

  # GET /tipoprodutos/new
  def new
    @tipoproduto = Tipoproduto.new
  end

  # GET /tipoprodutos/1/edit
  def edit
  end

  # POST /tipoprodutos or /tipoprodutos.json
  def create
    @tipoproduto = Tipoproduto.new(tipoproduto_params)

    respond_to do |format|
      if @tipoproduto.save
        format.html { redirect_to tipoproduto_url(@tipoproduto), notice: "Tipoproduto was successfully created." }
        format.json { render :show, status: :created, location: @tipoproduto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tipoproduto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipoprodutos/1 or /tipoprodutos/1.json
  def update
    respond_to do |format|
      if @tipoproduto.update(tipoproduto_params)
        format.html { redirect_to tipoproduto_url(@tipoproduto), notice: "Tipoproduto was successfully updated." }
        format.json { render :show, status: :ok, location: @tipoproduto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tipoproduto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipoprodutos/1 or /tipoprodutos/1.json
  def destroy
    @tipoproduto.destroy

    respond_to do |format|
      format.html { redirect_to tipoprodutos_url, notice: "Tipoproduto was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipoproduto
      @tipoproduto = Tipoproduto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tipoproduto_params
      params.require(:tipoproduto).permit(:nomeproduto)
    end
end

class PessoajuridicasController < ApplicationController
  before_action :set_pessoajuridica, only: %i[ show edit update destroy ]

  # GET /pessoajuridicas or /pessoajuridicas.json
  def index
    @pessoajuridicas = Pessoajuridica.all
  end

  # GET /pessoajuridicas/1 or /pessoajuridicas/1.json
  def show
  end

  # GET /pessoajuridicas/new
  def new
    @pessoajuridica = Pessoajuridica.new
  end

  # GET /pessoajuridicas/1/edit
  def edit
  end

  # POST /pessoajuridicas or /pessoajuridicas.json
  def create
    @pessoajuridica = Pessoajuridica.new(pessoajuridica_params)

    respond_to do |format|
      if @pessoajuridica.save
        format.html { redirect_to pessoajuridica_url(@pessoajuridica), notice: "Pessoajuridica was successfully created." }
        format.json { render :show, status: :created, location: @pessoajuridica }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pessoajuridica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pessoajuridicas/1 or /pessoajuridicas/1.json
  def update
    respond_to do |format|
      if @pessoajuridica.update(pessoajuridica_params)
        format.html { redirect_to pessoajuridica_url(@pessoajuridica), notice: "Pessoajuridica was successfully updated." }
        format.json { render :show, status: :ok, location: @pessoajuridica }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pessoajuridica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pessoajuridicas/1 or /pessoajuridicas/1.json
  def destroy
    @pessoajuridica.destroy

    respond_to do |format|
      format.html { redirect_to pessoajuridicas_url, notice: "Pessoajuridica was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pessoajuridica
      @pessoajuridica = Pessoajuridica.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pessoajuridica_params
      params.require(:pessoajuridica).permit(:nome, :cnpj)
    end
end

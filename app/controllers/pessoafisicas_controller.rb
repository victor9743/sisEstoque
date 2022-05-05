class PessoafisicasController < ApplicationController
  before_action :set_pessoafisica, only: %i[ show edit update destroy ]
  layout 'menuInicialApplication'

  # GET /pessoafisicas or /pessoafisicas.json
  def index
    @pessoafisicasAll = Pessoafisica.all
    @pessoafisicas = Pessoafisica.all.page(params[:page])

    respond_to do |format|
      format.html
      format.csv { send_data @pessoafisicasAll.to_csv(['id', 'nome', 'cpf']) }
    end
  end

  def import 
    Pessoafisica.import(params[:file])
    redirect_to root_url, notice: "Relatório importado."
  end

  # GET /pessoafisicas/1 or /pessoafisicas/1.json
  def show
  end

  # GET /pessoafisicas/new
  def new
    @pessoafisica = Pessoafisica.new
  end

  # GET /pessoafisicas/1/edit
  def edit
  end

  # POST /pessoafisicas or /pessoafisicas.json
  def create
    @pessoafisica = Pessoafisica.new(pessoafisica_params)

    respond_to do |format|
      if CPF.valid?(@pessoafisica.cpf) && @pessoafisica.nome.length > 5
        @pessoafisica.save
        format.html { redirect_to pessoafisicas_url, notice: "Pessoafisica was successfully created." }
        format.json { render :show, status: :created, location: @pessoafisica }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pessoafisica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pessoafisicas/1 or /pessoafisicas/1.json
  def update
    respond_to do |format|
      if @pessoafisica.update(pessoafisica_params)
        format.html { redirect_to pessoafisica_url(@pessoafisica), notice: "Pessoafisica was successfully updated." }
        format.json { render :show, status: :ok, location: @pessoafisica }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pessoafisica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pessoafisicas/1 or /pessoafisicas/1.json
  def destroy
    @pessoafisica.destroy

    respond_to do |format|
      format.html { redirect_to pessoafisicas_url, notice: "Pessoafisica was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pessoafisica
      @pessoafisica = Pessoafisica.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pessoafisica_params
      params.require(:pessoafisica).permit(:nome, :cpf)
    end
end

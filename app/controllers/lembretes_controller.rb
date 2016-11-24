class LembretesController < ApplicationController
  before_action :set_lembrete, only: [:show, :edit, :update, :destroy]

  # GET /lembretes
  # GET /lembretes.json
  def index
    @lembretes = Lembrete.all.paginate(:page => params[:page], :per_page => 5)
  end

  # GET /lembretes/1
  # GET /lembretes/1.json
  def show
  end

  # GET /lembretes/new
  def new
    @lembrete = Lembrete.new
  end

  # GET /lembretes/1/edit
  def edit
  end

  # POST /lembretes
  # POST /lembretes.json
  def create
    @lembrete = Lembrete.new(lembrete_params)

    respond_to do |format|
      if @lembrete.save
        flash[:success] = 'lembrete criado com sucesso.'
        format.html { redirect_to @lembrete }
        format.json { render :show, status: :created, location: @lembrete }
      else
        flash[:danger] = 'problemas criando o registro(save).'
        format.html { render :new }
        format.json { render json: @lembrete.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lembretes/1
  # PATCH/PUT /lembretes/1.json
  def update
    respond_to do |format|
      if @lembrete.update(lembrete_params)
        flash[:success] = 'lembrete editado com sucesso.'
        format.html { redirect_to @lembrete }
        format.json { render :show, status: :ok, location: @lembrete }
      else
        flash[:danger] = 'problemas criando o registro (update).'
        format.html { render :edit }
        format.json { render json: @lembrete.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lembretes/1
  # DELETE /lembretes/1.json
  def destroy
    @lembrete.destroy
    respond_to do |format|
      flash[:success] = 'lembrete foi apagado com sucesso.'
      format.html { redirect_to lembretes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lembrete
      @lembrete = Lembrete.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lembrete_params
      params.require(:lembrete).permit(:titulo, :nota)
    end
end

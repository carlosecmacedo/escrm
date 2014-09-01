class HabibsIssuesController < ApplicationController
  before_action :set_habibs_issue, only: [:show, :edit, :update, :destroy]
  # GET /habibs_issues
  # GET /habibs_issues.json
  def index
    @habibs_issues = HabibsIssue.all
  end

  # GET /habibs_issues/1
  # GET /habibs_issues/1.json
  def show
  end

  # GET /habibs_issues/new
  def new
    @habibs_issue = HabibsIssue.new
  end

  # GET /habibs_issues/1/edit
  def edit
  end

  # POST /habibs_issues
  # POST /habibs_issues.json
  def create
    @habibs_issue = HabibsIssue.new(habibs_issue_params)

    respond_to do |format|
      if @habibs_issue.save
        format.html { redirect_to @habibs_issue, notice: 'Habibs issue was successfully created.' }
        format.json { render :show, status: :created, location: @habibs_issue }
      else
        format.html { render :new }
        format.json { render json: @habibs_issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /habibs_issues/1
  # PATCH/PUT /habibs_issues/1.json
  def update
    respond_to do |format|
      if @habibs_issue.update(habibs_issue_params)
        format.html { redirect_to @habibs_issue, notice: 'Habibs issue was successfully updated.' }
        format.json { render :show, status: :ok, location: @habibs_issue }
      else
        format.html { render :edit }
        format.json { render json: @habibs_issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /habibs_issues/1
  # DELETE /habibs_issues/1.json
  def destroy
    @habibs_issue.destroy
    respond_to do |format|
      format.html { redirect_to habibs_issues_url, notice: 'Habibs issue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_habibs_issue
      @habibs_issue = HabibsIssue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def habibs_issue_params
      params.require(:habibs_issue).permit(:urgente, :nome_completo, :cpf_cnpj, :telefone, :email, :perfil, :rede, :habibs, :ragazzo, :hibridas, :numero_do_pedido, :segmento, :grupo, :midia, :emissor, :atendente, :status, :reclamacao, :resolucao, :fechamento, :data_de_resolucao, :data_de_fechamento)
    end
end

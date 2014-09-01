require 'test_helper'

class HabibsIssuesControllerTest < ActionController::TestCase
  setup do
    @habibs_issue = habibs_issues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:habibs_issues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create habibs_issue" do
    assert_difference('HabibsIssue.count') do
      post :create, habibs_issue: { atendente: @habibs_issue.atendente, cpf_cnpj: @habibs_issue.cpf_cnpj, data_de_fechamento: @habibs_issue.data_de_fechamento, data_de_resolucao: @habibs_issue.data_de_resolucao, email: @habibs_issue.email, emissor: @habibs_issue.emissor, fechamento: @habibs_issue.fechamento, grupo: @habibs_issue.grupo, habibs: @habibs_issue.habibs, hibridas: @habibs_issue.hibridas, midia: @habibs_issue.midia, nome_completo: @habibs_issue.nome_completo, numero_do_pedido: @habibs_issue.numero_do_pedido, perfil: @habibs_issue.perfil, ragazzo: @habibs_issue.ragazzo, reclamacao: @habibs_issue.reclamacao, rede: @habibs_issue.rede, resolucao: @habibs_issue.resolucao, segmento: @habibs_issue.segmento, status: @habibs_issue.status, telefone: @habibs_issue.telefone, urgente: @habibs_issue.urgente }
    end

    assert_redirected_to habibs_issue_path(assigns(:habibs_issue))
  end

  test "should show habibs_issue" do
    get :show, id: @habibs_issue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @habibs_issue
    assert_response :success
  end

  test "should update habibs_issue" do
    patch :update, id: @habibs_issue, habibs_issue: { atendente: @habibs_issue.atendente, cpf_cnpj: @habibs_issue.cpf_cnpj, data_de_fechamento: @habibs_issue.data_de_fechamento, data_de_resolucao: @habibs_issue.data_de_resolucao, email: @habibs_issue.email, emissor: @habibs_issue.emissor, fechamento: @habibs_issue.fechamento, grupo: @habibs_issue.grupo, habibs: @habibs_issue.habibs, hibridas: @habibs_issue.hibridas, midia: @habibs_issue.midia, nome_completo: @habibs_issue.nome_completo, numero_do_pedido: @habibs_issue.numero_do_pedido, perfil: @habibs_issue.perfil, ragazzo: @habibs_issue.ragazzo, reclamacao: @habibs_issue.reclamacao, rede: @habibs_issue.rede, resolucao: @habibs_issue.resolucao, segmento: @habibs_issue.segmento, status: @habibs_issue.status, telefone: @habibs_issue.telefone, urgente: @habibs_issue.urgente }
    assert_redirected_to habibs_issue_path(assigns(:habibs_issue))
  end

  test "should destroy habibs_issue" do
    assert_difference('HabibsIssue.count', -1) do
      delete :destroy, id: @habibs_issue
    end

    assert_redirected_to habibs_issues_path
  end
end

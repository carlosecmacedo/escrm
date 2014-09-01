json.array!(@habibs_issues) do |habibs_issue|
  json.extract! habibs_issue, :id, :urgente, :nome_completo, :cpf_cnpj, :telefone, :email, :perfil, :rede, :habibs, :ragazzo, :hibridas, :numero_do_pedido, :segmento, :grupo, :midia, :emissor, :atendente, :status, :reclamacao, :resolucao, :fechamento, :data_de_resolucao, :data_de_fechamento
  json.url habibs_issue_url(habibs_issue, format: :json)
end

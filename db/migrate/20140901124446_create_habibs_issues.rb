class CreateHabibsIssues < ActiveRecord::Migration
  def change
    create_table :habibs_issues do |t|
      t.boolean :urgente
      t.string :nome_completo
      t.string :cpf_cnpj
      t.string :telefone
      t.string :email
      t.string :perfil
      t.string :rede
      t.string :habibs
      t.string :ragazzo
      t.string :hibridas
      t.string :numero_do_pedido
      t.string :segmento
      t.string :grupo
      t.string :midia
      t.string :emissor
      t.string :atendente
      t.string :status
      t.text :reclamacao
      t.text :resolucao
      t.text :fechamento
      t.datetime :data_de_resolucao
      t.datetime :data_de_fechamento

      t.timestamps
    end
  end
end

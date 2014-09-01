# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140901124446) do

  create_table "habibs_issues", force: true do |t|
    t.boolean  "urgente"
    t.string   "nome_completo"
    t.string   "cpf_cnpj"
    t.string   "telefone"
    t.string   "email"
    t.string   "perfil"
    t.string   "rede"
    t.string   "habibs"
    t.string   "ragazzo"
    t.string   "hibridas"
    t.string   "numero_do_pedido"
    t.string   "segmento"
    t.string   "grupo"
    t.string   "midia"
    t.string   "emissor"
    t.string   "atendente"
    t.string   "status"
    t.text     "reclamacao"
    t.text     "resolucao"
    t.text     "fechamento"
    t.datetime "data_de_resolucao"
    t.datetime "data_de_fechamento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

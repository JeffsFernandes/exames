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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120311143753) do

  create_table "coinfections", :force => true do |t|
    t.string "nome", :limit => 30
  end

  create_table "coinfections_patients", :id => false, :force => true do |t|
    t.integer "patient_id",     :limit => 2
    t.integer "coinfection_id", :limit => 2
  end

  create_table "doctors", :force => true do |t|
    t.integer "crm",      :limit => 2
    t.string  "nome",     :limit => 100
    t.string  "email",    :limit => 50
    t.string  "telefone", :limit => 15
  end

  create_table "drug_resistances", :force => true do |t|
    t.integer "drug_id",        :limit => 2
    t.integer "examination_id", :limit => 2
  end

  create_table "drug_uses", :force => true do |t|
    t.integer "drug_id",        :limit => 2
    t.integer "examination_id", :limit => 2
  end

  create_table "drugs", :force => true do |t|
    t.string "nome", :limit => 30
  end

  create_table "examinations", :force => true do |t|
    t.date    "data_coleta"
    t.integer "carga_viral", :limit => 2
    t.integer "aghbs",       :limit => 2
    t.string  "periodo",     :limit => 25
    t.integer "doctor_id",   :limit => 2
    t.integer "patient_id",  :limit => 2
    t.integer "genotype_id", :limit => 2
  end

  create_table "examinations_mutations", :id => false, :force => true do |t|
    t.integer "examination_id", :limit => 2
    t.integer "mutation_id",    :limit => 2
  end

  create_table "genotypes", :force => true do |t|
    t.string "codigo", :limit => 2
  end

  create_table "mutations", :force => true do |t|
    t.string "codigo", :limit => 10
  end

  create_table "patients", :force => true do |t|
    t.string  "sexo",            :limit => 1
    t.integer "passagem",        :limit => 8
    t.date    "data_nascimento"
    t.string  "prontuario",      :limit => 10
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end

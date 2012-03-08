class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.char :sexo
      t.integer :passagem
      t.int2 :data_nascimento
      t.string :prontuario

      t.timestamps
    end
  end
end

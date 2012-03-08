class CreateExaminations < ActiveRecord::Migration
  def change
    create_table :examinations do |t|
      t.date :data_coleta
      t.int2 :carga_viral
      t.int2 :aghbs
      t.string :periodo

      t.timestamps
    end
  end
end

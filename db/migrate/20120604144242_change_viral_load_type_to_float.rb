class ChangeViralLoadTypeToFloat < ActiveRecord::Migration
  def self.up
    change_table :examinations do |t|
      t.change :carga_viral, :float
    end
  end

  def self.down
    change_table :examinations do |t|
      t.change :carga_viral, :integer
    end
  end
end

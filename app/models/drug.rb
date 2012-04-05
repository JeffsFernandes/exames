class Drug < ActiveRecord::Base
	has_many :drug_uses
	has_many :drug_resistances
	
  has_many :examinationsThatUseTheDrug, :through => :drug_uses, :source => 'examination'
  has_many :examinationsThatResistToTheDrug, :through => :drug_resistances, :source => 'examination'
end

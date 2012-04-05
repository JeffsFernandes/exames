class Examination < ActiveRecord::Base
	belongs_to :patient
	belongs_to :doctor
	belongs_to :genotype
  
	has_many :drug_uses, :dependent => :destroy
	has_many :drug_resistances, :dependent => :destroy
	
	has_and_belongs_to_many :mutations
	
	has_many :usesOfDrugs, :through => :drug_uses, :source => 'drug'
	has_many :resistancesToDrugs, :through => :drug_resistances, :source => 'drug'
	
	def use?(drugUse)
	   drugs = []
     drug_uses.each do |d|
      drugs << d.drugs
     end
     drugs.include?(course)
  end
end
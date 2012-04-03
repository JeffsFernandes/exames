class Examination < ActiveRecord::Base
	belongs_to :patient
	belongs_to :doctor
	has_many :drug_uses, :dependent => :destroy
	has_many :drug_resistances, :dependent => :destroy
	has_and_belongs_to_many :mutations
	belongs_to :genotype
	
	def use?(drugUse)
	   drugs = []
     drug_uses.each do |d|
      drugs << d.drugs
     end
     drugs.include?(course)
  end
end

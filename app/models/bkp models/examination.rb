class Examination < ActiveRecord::Base
	belongs_to :patient
	belongs_to :doctor
	has_many :drug_uses
	has_many :drug_resistances
	has_and_belongs_to_many :mutations
	belongs_to :genotype
end

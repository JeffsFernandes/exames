class Drug < ActiveRecord::Base
	has_many :drug_uses
	has_many :drug_resistances
end

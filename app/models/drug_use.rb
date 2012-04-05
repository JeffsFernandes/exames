class DrugUse < ActiveRecord::Base
	belongs_to :examination
	belongs_to :drug 
end

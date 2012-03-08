class Doctor < ActiveRecord::Base
	has_many :examinations
end

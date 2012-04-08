class Patient < ActiveRecord::Base
	has_and_belongs_to_many :coinfections
	has_many :examinations
end

class Mutation < ActiveRecord::Base
	has_and_belongs_to_many :examinations
end

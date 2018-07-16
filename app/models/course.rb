class Course < ApplicationRecord
	has_many :students, through: :starts
	has_many :start
end

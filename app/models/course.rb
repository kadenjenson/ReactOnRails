class Course < ApplicationRecord
	has_many :students
	has_many :start_dates
end

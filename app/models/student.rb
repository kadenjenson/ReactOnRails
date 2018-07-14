class Student < ApplicationRecord
	belongs_to :course
	belongs_to :start_date
end

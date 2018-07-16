class CoursesController < ApplicationController

	layout 'courses'

	def index
		@courses = Course.all
	end

	def show
		@course = Course.find(params[:id])
		@students = @course.students.all
	end

end
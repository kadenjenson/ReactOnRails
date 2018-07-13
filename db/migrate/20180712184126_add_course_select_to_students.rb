class AddCourseSelectToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :course_select, :string
  end
end

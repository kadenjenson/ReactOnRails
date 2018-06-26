json.extract! student, :id, :f_name, :l_name, :phone, :address_one, :address_two, :email, :city, :state, :zip, :dob, :course, :military_status, :education, :experience, :employment_status, :salary, :created_at, :updated_at
json.url student_url(student, format: :json)

Course.create!(name: "Class 1")
Course.create!(name: "Class 2")
Course.create!(name: "Class 3")

puts "created 3 courses"

Start.create!(start_date: (Date.today + 30.days), course_id: Course.first.id)
Start.create!(start_date: (Date.today + 60.days), course_id: Course.second.id)
Start.create!(start_date: (Date.today + 90.days), course_id: Course.third.id)

puts "3 Start Dates created"


10.times do |student|
	Student.create!(
		f_name: "Kaden",
		l_name: "Jenson",
		phone: "555-555-5555",
		email: "test#{student}@gmail.com",
		address_one: "555 E Nun-ya",
		address_two: "Business",
		city: "Los Angeles",
		state: "Washington",
		zip: "55555",
		dob: "1/12/1996",
		military_status: "asdfasdf",
		education: "asdfasdf",
		experience: "asdfasdf",
		employment_status: "asdfasdfasdf",
		salary: "555555",
		gender: "asdfasdf",
		format_type: "part-time",
		course_id: Course.first.id,
		start_id: Start.first.id
		)
end


10.times do |student|
	Student.create!(
		f_name: "Kaden",
		l_name: "Jenson",
		phone: "555-555-5555",
		email: "test#{student}@gmail.com",
		address_one: "555 E Nun-ya",
		address_two: "Business",
		city: "Los Angeles",
		state: "Washington",
		zip: "55555",
		dob: "1/12/1996",
		military_status: "asdfasdf",
		education: "asdfasdf",
		experience: "asdfasdf",
		employment_status: "asdfasdfasdf",
		salary: "555555",
		gender: "asdfasdf",
		format_type: "part-time",
		course_id: Course.second.id,
		start_id: Start.second.id
		)
end


10.times do |student|
	Student.create!(
		f_name: "Kaden",
		l_name: "Jenson",
		phone: "555-555-5555",
		email: "test#{student}@gmail.com",
		address_one: "555 E Nun-ya",
		address_two: "Business",
		city: "Los Angeles",
		state: "Washington",
		zip: "55555",
		dob: "1/12/1996",
		military_status: "asdfasdf",
		education: "asdfasdf",
		experience: "asdfasdf",
		employment_status: "asdfasdfasdf",
		salary: "555555",
		gender: "asdfasdf",
		format_type: "part-time",
		course_id: Course.third.id,
		start_id: Start.third.id
		)
end

puts "30 Students created"
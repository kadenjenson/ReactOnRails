3.times do |course|
	Course.create!(
		name: "Class #{course}",
		start_date: "08/15/2018"
		)
end

puts "created 3 courses"

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
		course_id: Course.last.id
		)
end

puts "10 Students created"
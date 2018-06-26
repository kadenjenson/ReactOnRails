class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :f_name
      t.string :l_name
      t.string :phone
      t.string :address_one
      t.string :address_two
      t.string :email
      t.string :city
      t.string :state
      t.string :zip
      t.date :dob
      t.integer :course
      t.integer :military_status
      t.integer :education
      t.integer :experience
      t.integer :employment_status
      t.integer :salary

      t.timestamps
    end
  end
end

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
      t.string :military_status
      t.string :education
      t.string :experience
      t.string :employment_status
      t.string :salary
      t.string :gender

      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end

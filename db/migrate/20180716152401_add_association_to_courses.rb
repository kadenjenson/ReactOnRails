class AddAssociationToCourses < ActiveRecord::Migration[5.1]
  def change
      add_reference :starts, :course, foreign_key: true
  end
end

class CreateStarts < ActiveRecord::Migration[5.1]
  def change
    create_table :starts do |t|
      t.date :start_date

      t.timestamps
    end
  end
end

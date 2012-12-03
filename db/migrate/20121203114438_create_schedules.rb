class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :course_id
      t.integer :student_id

      t.timestamps
    end
  end
end

class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :number
      t.integer :professor_id
      t.integer :schedule_id

      t.timestamps
    end
  end
end

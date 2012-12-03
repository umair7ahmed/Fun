class RemoveScheduleIdFromCourses < ActiveRecord::Migration
  def up
    remove_column :courses, :schedule_id
  end

  def down
  end
end

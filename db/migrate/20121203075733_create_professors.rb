class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :course_id

      t.timestamps
    end
  end
end

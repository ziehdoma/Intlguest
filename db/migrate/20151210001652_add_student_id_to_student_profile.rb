class AddStudentIdToStudentProfile < ActiveRecord::Migration
  def change
  	add_column :studentprofiles, :student_id, :integer, references: :students
  end
end


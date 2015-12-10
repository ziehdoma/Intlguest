class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.text :bio
      t.string :school
      t.string :language
      t.boolean :smoker

      t.timestamps null: false
    end
  end
end

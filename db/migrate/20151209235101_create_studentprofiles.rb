class CreateStudentprofiles < ActiveRecord::Migration
  def change
    create_table :studentprofiles do |t|
      t.string :name
      t.text :bio
      t.string :school
      t.string :language
      t.integer :zipcode
      t.boolean :smoker

      t.timestamps null: false
    end
  end
end

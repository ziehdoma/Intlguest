class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :name
      t.text :bio
      t.integer :zipcode
      t.boolean :smoker
      t.boolean :pets

      t.timestamps null: false
    end
  end
end

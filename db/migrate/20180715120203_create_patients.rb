class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :gender
      t.date :birth_date
      t.integer :telephone
      t.string :living_place

      t.timestamps
    end
  end
end

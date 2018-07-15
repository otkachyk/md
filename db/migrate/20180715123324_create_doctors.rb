class CreateDoctors < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :gender
      t.date :birthdate
      t.integer :telephone
      t.string :living_place
      t.string :email

      t.timestamps
    end
  end
end

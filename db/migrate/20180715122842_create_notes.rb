class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.references :card, foreign_key: true
      t.references :doctor, foreign_key: true
      t.string :note

      t.timestamps
    end
  end
end

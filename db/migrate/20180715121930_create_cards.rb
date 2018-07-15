class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.references :patient, foreign_key: true
      t.string :diagnosis
      t.string :complaints
      t.string :previous_diseases
      t.string :progressive_diseases
      t.string :bite
      t.string :dental_information
      t.string :x_ray
      t.string :color_vita
      t.date :teaching_date
      t.date :dental_hygiene_control_date

      t.timestamps
    end
  end
end

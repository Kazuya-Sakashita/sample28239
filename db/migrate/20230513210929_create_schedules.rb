class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.date :date
      t.string :work_day
      t.references :girl, foreign_key: true

      t.timestamps
    end
  end
end

class CreateJobSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :job_schedules do |t|
      t.references :job, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end

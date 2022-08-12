class CreateLeaveApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :leave_applications do |t|
      t.date :leave_start_date
      t.date :leave_end_date
      t.references :employee
      t.integer :status, default: 0

      t.timestamps
    end
  end
end

class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :secret

      t.timestamps
    end
  end
end

class CreateEmployeeAlls < ActiveRecord::Migration[7.0]
  def change
    create_table :employee_alls do |t|
      t.string :acoount
      t.integer :employee_id
      t.integer :manager_id

      t.timestamps
    end
  end
end

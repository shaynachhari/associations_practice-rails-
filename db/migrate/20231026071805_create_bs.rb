class CreateBs < ActiveRecord::Migration[7.0]
  def change
    create_table :bs do |t|
      t.string :b_number

      t.timestamps
    end
  end
end

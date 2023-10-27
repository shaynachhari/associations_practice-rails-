class CreateStudent1s < ActiveRecord::Migration[7.0]
  def change
    create_table :student1s do |t|
      t.string :name

      t.timestamps
    end
  end
end

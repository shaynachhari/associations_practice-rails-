class CreateSchools < ActiveRecord::Migration[7.0]
  def change
    create_table :schools do |t|
      # t.integer :student1_id
      # t.integer :teacher_id
      t.belongs_to :Student1
      t.belongs_to :teacher

      t.timestamps
    end
  end
end
c\
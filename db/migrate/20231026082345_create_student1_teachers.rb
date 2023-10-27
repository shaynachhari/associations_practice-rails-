class CreateStudent1Teachers < ActiveRecord::Migration[7.0]
            # self.table_name = :Student1Teachers

  def change
    create_table :student1Teachers do |t|
      t.integer :student1_id
      t.integer :teacher_id
      t.belongs_to :Student1, :class_name => "Student1Teachers"
      t.belongs_to :teacher,:class_name => "Student1Teachers"


      t.timestamps
    end
  end
end

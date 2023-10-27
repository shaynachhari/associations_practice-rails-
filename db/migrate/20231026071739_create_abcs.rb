class CreateAbcs < ActiveRecord::Migration[7.0]
  def change
    create_table :abcs do |t|
      t.belongs_to :a 
      t.belongs_to :b

      t.timestamps
    end
  end
end

class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name 
      t.integer :price
      # t.integer :nuser_id
      t.belongs_to :nuser ,foreign_key: true

      t.timestamps
    end
  end
end

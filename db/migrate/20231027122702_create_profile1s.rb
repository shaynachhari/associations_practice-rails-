class CreateProfile1s < ActiveRecord::Migration[7.0]
  def change
    create_table :profile1s do |t|
      t.string :name,foreign_key: true
      t.integer :age

      t.timestamps
    end
  end
end

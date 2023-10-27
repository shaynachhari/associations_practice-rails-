class CreateToms < ActiveRecord::Migration[7.0]
  def change
    create_table :toms do |t|
      t.string :name

      t.timestamps
    end
  end
end

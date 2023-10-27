class CreateJerries < ActiveRecord::Migration[7.0]
  def change
    create_table :jerries do |t|
      t.string :title

      t.timestamps
    end
  end
end

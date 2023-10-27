class CreateUser1s < ActiveRecord::Migration[7.0]
  def change
    create_table :user1s do |t|
      t.string :name
      t.integer :supervisor_id

      t.timestamps
    end
  end
end

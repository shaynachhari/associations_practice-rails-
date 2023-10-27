class CreateAccountDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :account_details do |t|
      t.belongs_to :managerAccount
      t.integer :credit_rating

      t.timestamps
    end
  end
end

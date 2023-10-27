class CreateManagerAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :manager_accounts do |t|
      t.belongs_to :manager
      t.string :account_number

      t.timestamps
    end
  end
end

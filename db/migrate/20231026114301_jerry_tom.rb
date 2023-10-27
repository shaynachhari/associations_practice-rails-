class JerryTom < ActiveRecord::Migration[7.0]
  
  def change
    create_table :jerries_toms do|t|
      t.belongs_to :jerry
      t.belongs_to :tom
    end
  end
end

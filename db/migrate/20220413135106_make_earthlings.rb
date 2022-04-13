class MakeEarthlings < ActiveRecord::Migration[5.2]
  def change
    create_table :earthlings do |t|
      t.string :first_name
      t.string :last_name
      t.string :job
    
      t.timestamps
    end
  end
end

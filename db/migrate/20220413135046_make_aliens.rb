class MakeAliens < ActiveRecord::Migration[5.2]
  def change
    create_table :aliens do |t|
      t.string :name
      t.string :home_planet
      t.string :earth_disguise_name
      t.integer :light_years_to_home_planet
    
      t.timestamps
    end
  end
end

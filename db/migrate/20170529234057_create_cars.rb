class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :colour
      t.string :year
      t.references :agency, index: true
      t.timestamps
    end
  end
end

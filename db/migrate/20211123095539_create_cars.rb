class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.integer :price_per_day
      t.string :localisation
      t.string :immatriculation
      t.string :brand
      t.string :details
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

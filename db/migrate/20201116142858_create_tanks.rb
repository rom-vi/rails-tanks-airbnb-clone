class CreateTanks < ActiveRecord::Migration[6.0]
  def change
    create_table :tanks do |t|
      t.string :name
      t.integer :weight_in_kg
      t.string :manufacturer
      t.string :description
      t.integer :price_per_day
      t.integer :capacity
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :race
      t.string :gender
      t.text :description
      t.boolean :chip
      t.boolean :worm
      t.boolean :vaccined
      t.string :accessories
      t.integer :daily_price
      t.references :owner, null: false, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end

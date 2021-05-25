class AddSpeciesToAnimals < ActiveRecord::Migration[6.0]
  def change
    add_column :animals, :species, :string
  end
end

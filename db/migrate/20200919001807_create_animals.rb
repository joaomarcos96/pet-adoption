class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.date :date_of_birth
      t.references :animal_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end

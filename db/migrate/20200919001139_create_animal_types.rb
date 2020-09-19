class CreateAnimalTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :animal_types do |t|
      t.string :name
    end
  end
end

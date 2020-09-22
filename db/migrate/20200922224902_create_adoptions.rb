class CreateAdoptions < ActiveRecord::Migration[6.0]
  def change
    create_table :adoptions do |t|
      t.string :adopter_name
      t.date :adoption_date
      t.belongs_to :animal, foreign_key: true

      t.timestamps
    end
  end
end

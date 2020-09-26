class UpdateAnimalIdOfAdoptions < ActiveRecord::Migration[6.0]
  def change
    change_column_null :adoptions, :animal_id, false
  end
end

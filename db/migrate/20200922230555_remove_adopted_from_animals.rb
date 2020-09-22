class RemoveAdoptedFromAnimals < ActiveRecord::Migration[6.0]
  def change
    remove_column :animals, :adopted, :boolean
  end
end

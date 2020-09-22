class AddDefaultValueToAdopted < ActiveRecord::Migration[6.0]
  def change
    change_column_default :animals, :adopted, from: nil, to: false
  end
end

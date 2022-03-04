class AddDistanceToDogs < ActiveRecord::Migration[6.1]
  def change
    add_column :dogs, :distance, :float
  end
end

class AddCapacityToFlats < ActiveRecord::Migration[7.0]
  def change
    add_column :flats, :capacity, :integer
  end
end

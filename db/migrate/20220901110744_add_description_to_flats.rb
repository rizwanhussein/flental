class AddDescriptionToFlats < ActiveRecord::Migration[7.0]
  def change
    add_column :flats, :description, :string
  end
end

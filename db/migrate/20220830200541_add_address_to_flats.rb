class AddAddressToFlats < ActiveRecord::Migration[7.0]
  def change
    add_column :flats, :street_address, :string
    add_column :flats, :city, :string
    add_column :flats, :postcode, :string
  end
end

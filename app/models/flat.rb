class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  geocoded_by :street_address
  # after_validation :geocode, if:
  # :will_save_changes_to_address?
  belongs_to :user

end

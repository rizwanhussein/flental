class Flat < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  geocoded_by :street_address
  after_validation :geocode, if:
  :will_save_change_to_street_address?
  belongs_to :user

end

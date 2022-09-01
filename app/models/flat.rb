class Flat < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  validates :name, presence: true, uniqueness: true
  validates :street_address, presence: true
  # validates :description, presence: true
  # validates :capacity, presence: true

  geocoded_by :street_address
  after_validation :geocode, if:
  :will_save_change_to_street_address?
  belongs_to :user
end

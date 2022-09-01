class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :street_address, presence: true
  # validates :description, presence: true
  # validates :capacity, presence: true

  geocoded_by :street_address
  after_validation :geocode, if:
  :will_save_change_to_street_address?

  # dont want to delete the below in case it breaks something but we may not need it pls check in merge
  belongs_to :user

  include PgSearch::Model
  pg_search_scope :search_by_street_address_and_description,
    against: [ :street_address, :description ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end

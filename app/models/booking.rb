class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :witness

  validates :wedding_date, presence: true
  validates :wedding_address, presence: true
  validates :wedding_address, uniqueness: { scope: :wedding_date,
                                           message: "Une réservation existe déjà à cette date et cette adresse." }
end

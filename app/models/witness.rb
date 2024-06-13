class Witness < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true
  validates :price_per_day, presence: true
  validates :address, presence: true
  validates :gender, presence: true
  validates :gender, inclusion: { in: %w[homme femme] }
end
 
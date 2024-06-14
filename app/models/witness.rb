class Witness < ApplicationRecord
  include PgSearch::Model
  
  pg_search_scope :search_name_gender_and_price_per_day,
  against: [:name, :gender, :price_per_day],
  using: { tsearch: { prefix: true } }

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true
  validates :price_per_day, presence: true
  validates :address, presence: true
  validates :gender, presence: true
  validates :gender, inclusion: { in: %w[Homme Femme] }
end

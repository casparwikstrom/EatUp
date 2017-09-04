class Popup < ApplicationRecord
  belongs_to :user

  has_many :wishlists, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :popuptypes, dependent: :destroy
  has_many :types, through: :popuptypes


  has_attachments :photos
  acts_as_votable
  monetize :price_cents


  validates :title, presence: true
  validates :status, inclusion: { in: ["pending", "active", "funded", "cancelled"] }
  geocoded_by :address

  after_validation :geocode, if: :address_changed?


  def is_ready?
    ready = [:description, :funding_goal, :deadline, :price].all? do |attribute|
      send(attribute).present?
    end
    ready = false unless photos.try(:first)
    return ready
  end
end

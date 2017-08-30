class Popup < ApplicationRecord
  searchkick

  belongs_to :user

  has_many :wishlists, dependent: :destroy

  has_many :orders, dependent: :destroy

  has_many :popuptypes
  has_many :types, through: :popuptypes
  has_attachment :photos
end

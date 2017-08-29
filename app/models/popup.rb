class Popup < ApplicationRecord
  belongs_to :user

  has_many :wishlists

  has_many :orders

  has_many :popuptypes
  has_many :types, through: :popuptypes
  has_attachment :photos
end

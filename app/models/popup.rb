class Popup < ApplicationRecord
  belongs_to :user

  has_many :wishlists, dependent: :destroy

  has_many :orders, dependent: :destroy

  has_attachment :photos
end

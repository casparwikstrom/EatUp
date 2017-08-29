class Popup < ApplicationRecord
  belongs_to :user
  has_many :wishlists
  has_attachment :photos
end

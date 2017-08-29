class Popup < ApplicationRecord
  belongs_to :user
  belongs_to :wishlists
  has_attachment :photos
end

class Popup < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_attachment :photos
end

class Popup < ApplicationRecord
  belongs_to :user
  has_attachment :photos
end

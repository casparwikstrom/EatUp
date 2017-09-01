class Wishlist < ApplicationRecord
  belongs_to :user
  belongs_to :popup
  # validates :popup, uniqueness: true
end

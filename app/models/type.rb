class Type < ApplicationRecord
  has_many :popups, through: :popuptypes
end

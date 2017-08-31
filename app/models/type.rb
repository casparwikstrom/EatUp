class Type < ApplicationRecord
  has_many :popuptypes
  has_many :popups, through: :popuptypes
end

class Order < ApplicationRecord
  belongs_to :user
  belongs_to :popup
  monetize :amount_cents
end

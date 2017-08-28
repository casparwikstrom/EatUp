class Order < ApplicationRecord
  belongs_to :pledge
  belongs_to :user
  belongs_to :popup
end

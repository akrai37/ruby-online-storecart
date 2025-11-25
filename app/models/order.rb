class Order < ApplicationRecord
  validates :customer_name, presence: true
  validates :customer_email, presence: true
  validates :total, presence: true, numericality: { greater_than: 0 }
end

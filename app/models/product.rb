class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true
  
  def self.search(query)
    if query.present?
      where("name LIKE ? OR description LIKE ?", "%#{query}%", "%#{query}%")
    else
      all
    end
  end
end

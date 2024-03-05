class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { in: 1..500 }

  belongs_to :supplier

  has_many :images

  def is_discounted?
    if price <= 10
      return true
    else
      return false
    end
  end

  def tax
    tax = 9.0 / 100.0 * price
  end

  def total
    total = price + tax
  end
end

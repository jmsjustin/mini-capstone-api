class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { in: 1..500 }

  belongs_to :supplier
  has_many :category_products

  has_many :images

  has_many :category_products
  has_many :categories, through: :category_products

  has_many :carted_products
  has_many :orders, through: :carted_products

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

  def primary_image
    if images.length > 0
      images[0].url
    else
      "https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg"
    end
  end
end

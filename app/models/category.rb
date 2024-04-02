class Category < ApplicationRecord
  has_many :category_products

  has_many :productrs, through: :category_products
end

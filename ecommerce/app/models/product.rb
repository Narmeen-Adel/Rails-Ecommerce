class Product < ApplicationRecord
  belongs_to :category
  belongs_to :brand
  belongs_to :store
end

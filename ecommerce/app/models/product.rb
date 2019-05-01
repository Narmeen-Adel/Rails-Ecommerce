class Product < ApplicationRecord
  belongs_to :category
  belongs_to :brand
  belongs_to :store
  has_one_attached :image
  has_many :order_products
  has_many :orders, :through =>:order_products
  has_many :carts
  has_many :users, :through =>:carts



  def product_category
    category.name
  end

  def product_brand
    brand.name
  end

  def product_store
    store.name
  end

  def find_store
    store.product_store_id(current_user.id)
  end

  def product_seller
    store.user.name 
  end
  def self.search_by(search_term)
    # @Product=Product.where("LOWER(title) LIKE :search_term OR LOWER(description) LIKE :search_term ",search_term: "%#{search_term.downcase}").where("category_id LIKE ?","#{filter_term}")

    @Product=Product.where("LOWER(title) LIKE :search_term OR LOWER(description) LIKE :search_term ",search_term: "%#{search_term.downcase}")
  end
  def self.filter(filter_term,search_term)
    @Product=Product.where("LOWER(title) LIKE :search_term OR LOWER(description) LIKE :search_term ",search_term: "%#{search_term.downcase}").where("category_id LIKE ?","#{filter_term}")
  end
  def self.filterb(filter_brand,search_term)
    @Product=Product.where("LOWER(title) LIKE :search_term OR LOWER(description) LIKE :search_term ",search_term: "%#{search_term.downcase}").where("brand_id LIKE ?","#{filter_brand}")

    # where("brand_id LIKE ?","#{filter_brand}")
  end
end

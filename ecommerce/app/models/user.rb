class User < ApplicationRecord
#class User < ActiveRecord::Base
 # mount_uploader :avatar, AvatarUploader
  has_and_belongs_to_many :coupons
  has_one_attached :avatar

  def is_seller?
       is_seller
  end

  has_many :order_products
  has_many :orders ,:through => :order_products
  has_many :orders
  has_many :carts
  has_many :products ,:through => :carts


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


 def validate_user_with_coupon coupon_id
          self.coupons[coupon_id]        ###  in model user or coupon_user   
 end


  
  
end

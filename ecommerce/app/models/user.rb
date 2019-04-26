#class User < ApplicationRecord
class User < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  has_many:coupons
#class User < ActiveRecord::Base mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Setup accessible (or protected) attributes for your model
  attr_accessor :email, :password, :remember_me, :avatar, :avatar_cache, :remove_avatar

  validates_presence_of   :avatar
  validates_integrity_of  :avatar
  validates_processing_of :avatar









  

  has_many :orders
  has_one :shopping_cart
end

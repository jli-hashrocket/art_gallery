class Customer < ActiveRecord::Base
  validates_presence_of :email

  has_many :favorite_collections,
    inverse_of: :customer,
    dependent: :destroy
  has_many :purchases,
    inverse_of: :customer
end

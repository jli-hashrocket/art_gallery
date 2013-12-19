class Collection < ActiveRecord::Base
  validates_presence_of :name

  has_many :artworks,
    inverse_of: :collection
  has_many :favorite_collections,
    inverse_of: :collection,
    dependent: :destroy
end

class FavoriteCollection < ActiveRecord::Base
  validates_presence_of :collection_id
  validates_presence_of :customer_id

  belongs_to :collection,
    inverse_of: :favorite_collections
  belongs_to :customer,
    inverse_of: :favorite_collections
end

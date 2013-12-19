class Artwork < ActiveRecord::Base
  validates_presence_of :artist_id
  validates_presence_of :available
  validates_presence_of :sold
  validates_presence_of :artwork_type_id

  belongs_to :artist,
    inverse_of: :artworks
  belongs_to :collection,
    inverse_of: :artworks
  belongs_to :artwork_type,
    inverse_of: :artworks
  has_one :purchase,
    inverse_of: :artwork
end

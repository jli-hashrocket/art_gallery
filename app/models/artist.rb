class Artist < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :style_id
  validates_presence_of :email

  belongs_to :style,
    inverse_of: :artists
  has_many :artworks,
    inverse_of: :artist
end

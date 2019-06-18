class Artwork < ApplicationRecord
  has_many :artist_artworks, dependent: :destroy
  has_many :artists, through: :artist_artworks
end

class Artist < ApplicationRecord
  has_many :artist_artworks, dependent: :destroy
  has_many :artworks, through: :artist_artworks
end

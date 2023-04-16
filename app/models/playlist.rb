class Playlist < ApplicationRecord
  validates :genre, length: { maximum: 36 }
end
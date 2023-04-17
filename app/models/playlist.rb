class Playlist < ApplicationRecord
  validates :genre, presence: true
  validates :character, presence: true
  validates :alignment, presence: true
  validates :songs, presence: true
  validate :songs_is_array

  private

  def songs_is_array
    errors.add(:songs, 'must be an array') unless songs.is_a?(Array)
  end
end
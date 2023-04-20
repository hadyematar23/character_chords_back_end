class Character < ApplicationRecord
  belongs_to :theme
  has_one_attached :image
  validates :s3key, presence: true
  validates :name, presence: true
  validates :theme, presence: true
  
  enum alignment: {
    'Lawful Good' => 1,
    'Neutral Good' => 2,
    'Chaotic Good' => 3,
    'Lawful Neutral' => 4,
    'True Neutral' => 5,
    'Chaotic Neutral' => 6,
    'Lawful Evil' => 7,
    'Neutral Evil' => 8,
    'Chaotic Evil' => 9
  }
end
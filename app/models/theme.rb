class Theme < ApplicationRecord
  has_many :questions
  has_many :characters

  validates :name, presence: true
  validates :title, presence: true
  validates :s3_key, presence: true
end
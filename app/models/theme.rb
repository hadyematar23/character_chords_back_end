class Theme < ApplicationRecord
  has_many :questions
  has_many :characters
end
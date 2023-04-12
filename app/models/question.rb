class Question < ApplicationRecord
  belongs_to :theme 
  enum good_evil_chaotic_lawful: { good_evil: 0, chaotic_lawful: 1 }
end
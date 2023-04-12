class Character < ApplicationRecord
  belongs_to :theme 
  enum alignment: {
    lawful_good: 1,
    neutral_good: 2,
    chaotic_good: 3,
    lawful_neutral: 4,
    true_neutral: 5,
    chaotic_neutral: 6,
    lawful_evil: 7,
    neutral_evil: 8,
    chaotic_evil: 9
  }
end
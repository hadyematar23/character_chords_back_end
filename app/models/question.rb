class Question < ApplicationRecord
  belongs_to :theme 
  enum good_evil_chaotic_lawful: { good_evil: 0, chaotic_lawful: 1 }
  validates :question, presence: true
  validates :answer_1, presence: true
  validates :answer_2, presence: true
  validates :answer_3, presence: true
  validates :answer_4, presence: true
  validates :answer_5, presence: true
  validates :good_evil_chaotic_lawful, presence: true
end
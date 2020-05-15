class Cocktail < ApplicationRecord
  has_many :doses
  has_many :ingredients, through: :doses, dependent: :destroy
  has_one_attached :picture

  validates :name, presence: true, uniqueness: true
end

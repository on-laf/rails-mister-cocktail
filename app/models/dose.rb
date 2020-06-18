class Dose < ApplicationRecord
  # validates_associated :cocktail, :ingredient
  belongs_to :ingredient
  belongs_to :cocktail
  validates :description, :cocktail, :ingredient, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
end

class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates :ingredient_id, presence: true, uniqueness: {scope: :cocktail_id}
  validates :cocktail_id, presence: true
end

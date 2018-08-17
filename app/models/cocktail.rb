class Cocktail < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :image, presence: true
end

class Deck < ApplicationRecord
  # has_many :cards
  # has_many :theme_sets, through: :cards
  belongs_to :user
  validates :name, presence: true
end

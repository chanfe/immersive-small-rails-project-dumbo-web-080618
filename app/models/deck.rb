class Deck < ApplicationRecord
  has_many :card_decks
  has_many :cards, through: :card_decks
  belongs_to :user
  validates :name, presence: true
end

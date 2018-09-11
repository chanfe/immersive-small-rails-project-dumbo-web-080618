class CardDeck < ApplicationRecord
  belongs_to :card
  belongs_to :deck

  def self.find_copies(card_id, deck_id)
    found = self.select {|a| a.card_id == card_id and a.deck_id == deck_id}[0]
    if found == nil
      nil
    else
      found.copies
    end
  end
end

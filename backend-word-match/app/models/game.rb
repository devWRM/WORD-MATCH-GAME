class Game < ApplicationRecord
  belongs_to :gameboard
  belongs_to :card
end

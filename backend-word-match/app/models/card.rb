class Card < ApplicationRecord

    has_many :games
    has_many :gameboards, through: :games

end

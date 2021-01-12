class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.belongs_to :gameboard, null: false, foreign_key: true
      t.belongs_to :card, null: false, foreign_key: true

      t.timestamps
    end
  end
end

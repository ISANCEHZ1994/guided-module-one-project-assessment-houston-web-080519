class RatingMigration < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :reviewer_id
      t.integer :game_id
      t.integer :stars
      t.string :comments
    end

  end
end

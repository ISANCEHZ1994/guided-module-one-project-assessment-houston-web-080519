class GamesMigration < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :title
      t.string :difficulty
      t.string :esrb
    end
  
  end
end

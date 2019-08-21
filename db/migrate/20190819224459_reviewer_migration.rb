class ReviewerMigration < ActiveRecord::Migration[5.2]
  def change
    create_table :reviewers do |t|
       t.string :name
       t.integer :age
       t.string :gender
       t.string :password #<--- New colum added!! 
    end

       #I think I place the password instance here 
       #so that i can log in to the app 
  end
end
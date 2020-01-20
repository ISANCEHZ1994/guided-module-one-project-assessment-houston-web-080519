require_relative '../config/environment'
ActiveRecord::Base.logger = nil
prompt = TTY::Prompt.new
exitApp = false
current_user = nil

 a = Artii::Base.new :font => 'slant'
 puts a.asciify('Welcome to S.GAME REVIEWS!!').yellow
    gets#this is prompting a wait (press enter to continue!)

while (exitApp != true)
    
    while current_user == nil
        users_response = prompt.select("What would you like to do?".blue,
            ["Sign Up".yellow,
            "Log In".yellow,
            "Quit".red
        ])

        if (users_response == "Sign Up".yellow)

            current_user = Reviewer.create({
                name: prompt.ask("What is your name?"),
                age: prompt.ask("What is your age?"),
                gender: prompt.ask("How do you identify yourself?(MALE, FEMALE, OTHER)"),
                password: prompt.ask("What will be your password?")
            })
        end

        if (users_response == "Log In".yellow)
            current_user = Reviewer.where({
                name: prompt.ask("What did you call yourself?"),
                age: prompt.ask("What was your age?"),
                password: prompt.mask("What was your password?")
            }).first 

            if current_user == nil
                puts "Sorry either the Name, Age or the Password were incorrect. Please try again.".red
            end

            if current_user != nil
                puts "Welcome Back!!".green
            end
            
           
        end    

        if (users_response == "Quit".red)
            exit
        end 
    end #while(user == nil)

    while(current_user != nil)
        # system("clear") #can make whatever your working on clearer to read
        users_response = prompt.select("Main Menu".blue, [
            "See Reviews".yellow,
            "Add A Game".yellow,
            "Create A Review".yellow,
            # "Update My Review".yellow,
            "Sign Out".red
        ]) 
        
        if (users_response == "See Reviews".yellow)

              reviewer_arr = Reviewer.all.map do |reviewer|
                 reviewer.name 
              end

              users_response = prompt.select("Who's review do you want to see?", reviewer_arr)
              #==============================
              temp_rev = Reviewer.all.find do |rev|
                    rev.name == users_response
              end

              #==============================
              temp_rating = Rating.all.select do |rate|
                rate.reviewer_id == temp_rev.id
              end
          
              #==============================
              arr_game_ids = temp_rating.map do |r|
                r.game_id
              end

              #==============================
              temp_game = Game.all.select do |g|
                arr_game_ids.include?(g.id)
              end
                
              #==============================
            puts " Here are #{temp_rev.name}'s reviews!:".blue
            puts "========================================".blue
            for i in 0..temp_game.length-1 do
              puts "Game: #{temp_game[i].title.blue}  Stars: #{temp_rating[i].stars.to_s.green}   Comment: #{temp_rating[i].comments.red}"
            end
            puts "========================================".blue

        end

        if (users_response == "Add A Game".yellow)
           new_game = Game.new({
           title: prompt.ask("What is the title of the game?"),
           difficulty: prompt.ask("Type which best describes the difficulty: Easy, Medium, Hard?"),
           esrb: prompt.ask("Please type the ESRB (E, T, or M) rating of the game")
        })
        
            generic_condition = Game.all.find_by(title:new_game.title)
         
           if generic_condition != nil
            puts "Actually that game is already in the system..".blue

           else
            new_game.save
            puts "Wow, I love that game!!".blue
           end

        end 

        if (users_response == "Create A Review".yellow) 
            
            game_name = prompt.ask("Which game are we reviewing?")
            game = Game.all.find_by(title:game_name)

            if(game != nil)
                star_rate = prompt.ask("Out of 5 stars, how would you rate this game?")

                    if star_rate == star_rate.to_i > 5
                         puts "Sorry that number is way too high! Please make it either less than or equal to 5.".red
                         break
                    end
                push_comment = prompt.ask("What do you want to say about the game?")
            
                thing = Rating.create({
                        reviewer_id: current_user.id,
                        game_id: game.id,
                        stars: star_rate,
                        comments: push_comment


                })
                puts "Yay! Thanks for the feedback on #{thing} !!!"

            else
                puts "Sorry that game is not in our system!!".red
                puts "Did you first ADD A GAME?".blue
            end
            
        end 

        # if (users_response == "Update My Review".yellow)
        #     update_review = Rating.all.find_by(reviewer_id: current_user)


            
        #     # update_review = prompt.ask("Which review are we changing?")
        #     #     review = Rating.all.find_by(reviewer_id: current_user.id)
        # end


        if (users_response == "Sign Out".red)
             a = Artii::Base.new :font => 'slant'
                puts a.asciify('Welcome to S.GAME REVIEWS!').yellow

            current_user = nil
            break
        end

    end    

        
end#entire program loop
#+1 832 988 4797
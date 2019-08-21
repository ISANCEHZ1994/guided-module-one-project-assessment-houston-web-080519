require_relative '../config/environment'
ActiveRecord::Base.logger = nil
prompt = TTY::Prompt.new
exitApp = false
current_user = nil
# a = Artii::Base.new :font => 'slant'
# prompt.say(a.asciify('Welcome to S.GAME REVIEWS!'))

 puts "WELCOME TO S.GAME REVIEWS!!!"
while (exitApp != true)
    
    while current_user == nil
        users_response = prompt.select("What would you like to do?",
            ["Sign Up",
            "Log In",
            "Quit"])

            
        if (users_response == "Sign Up")

            current_user = Reviewer.create({
                name: prompt.ask("What is your name?"),
                age: prompt.ask("What is your age?"),
                gender: prompt.ask("How do you identify yourself?"),
                password: prompt.ask("What will be your password?")
            })
        end

        if (users_response == "Log In")
            current_user = Reviewer.where({
                name: prompt.ask("What did you call yourself?"),
                password: prompt.mask("What was your password?")
            }).first 

            puts "Sorry either the Name or the Password were incorrect. Please try again." #"the current_user is: #{current_user}"
            #make say that is not the right password/name 
        end    

        if (users_response == "Quit")
            exit
        end 
    end #while(user == nil)

    while(current_user != nil)
        puts "current user is: #{current_user}"
        users_response = prompt.select("Main Menu", [
            "See Reviewers Comments",
            "Sign Out"
        ]) 
        
        if (users_response == "See Reviewers Comments")

              reviewer_arr = Reviewer.all.map do |reviewer|
                 reviewer.name
              end

              users_response = prompt.select("Here are all the REVIEWERS!", reviewer_arr) 
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
                # [1,2,3].include?(4) => false
              end
                
            #==============================
            for i in 0..temp_game.length-1 do
              puts "Game: #{temp_game[i].title} Comment: #{temp_rating[i].comments}"
            end
        end

        if (users_response == "Sign Out")
            puts "you said sign out"
            #I want to return to sign up/ log in menu
            current_user = nil
            puts "current user is: #{current_user}"
            break
        end

    end    

        
end#entire program loop
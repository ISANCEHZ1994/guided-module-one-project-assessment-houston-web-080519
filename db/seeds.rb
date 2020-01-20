Game.destroy_all
Rating.destroy_all
Reviewer.destroy_all


scott = Reviewer.create({name:"Scott Evans", age: 58, gender: "MALE", password: "scott"})
lalo = Reviewer.create({name: "Lalo Beltran", age: 21, gender: "MALE", password: "lalob69"})
kyle = Reviewer.create({name: "Kyle Rich", age: 14, gender: "MALE", password: "kyle"})
joyce = Reviewer.create({name: "Joyce Smith", age: 48, gender: "FEMALE", password: "joyce"})
maria = Reviewer.create({name: "Maria Lopez", age: 24, gender: "FEMALE", password: "maria"})
kelly = Reviewer.create({name: "Kelly Garcia", age: 12, gender: "FEMALE", password: "kellyg21"})



final = Game.create({title: "Final Fantasy VII", difficulty: "Medium", esrb: "T"})
hearts = Game.create({title: "Kingdom Hearts III", difficulty: "Easy", esrb: "E"})
last = Game.create({title: "The Last of Us", difficulty: "Hard", esrb: "M"})
kombat = Game.create({title: "Mortal Kombat 11", difficulty: "Easy", esrb: "M"})
cod = Game.create({title: "Call of Duty: Advanced Warfare", difficulty: "Easy", esrb: "M"})
sky = Game.create({title: "No Man's Sky", difficulty: "Medium", esrb: "E"})
fallout = Game.create({title: "Fallout", difficulty: "Hard", esrb: "T"})
anthem = Game.create({title: "Anthem", difficulty: "Medium", esrb: "T"})


scott_reivew1 = Rating.create({reviewer_id: scott.id, game_id: final.id , stars: 5, comments: "A timeless classic!" })
scott_reivew2 = Rating.create({reviewer_id: scott.id, game_id: hearts.id , stars: 3, comments: "Probably more suited for kids." })
scott_reivew3 = Rating.create({reviewer_id: scott.id, game_id: last.id , stars: 5, comments: "Wow. Quite a masterpiece. I will definitely replay this game!" })
scott_reivew4 = Rating.create({reviewer_id: scott.id, game_id: kombat.id , stars: 2, comments: "Way to much blood for my taste." })
scott_reivew5 = Rating.create({reviewer_id: scott.id, game_id: cod.id , stars: 1, comments: "Don't waste your money on this." })
scott_reivew6 = Rating.create({reviewer_id: scott.id, game_id: sky.id , stars: 2, comments: "Couldn't figure out what to do to save my life." })
scott_reivew7 = Rating.create({reviewer_id: scott.id, game_id: fallout.id , stars: 1, comments: "WHAT IS THIS??!" })
scott_reivew8 = Rating.create({reviewer_id: scott.id, game_id: anthem.id , stars: 3, comments: "Mediocre at best." })

lalo_reivew1 = Rating.create({reviewer_id: lalo.id, game_id: final.id , stars: 3, comments: "Hard to understand how to play." })
lalo_reivew2 = Rating.create({reviewer_id: lalo.id, game_id: hearts.id , stars: 5, comments: "LOVED IT." })
lalo_reivew3 = Rating.create({reviewer_id: lalo.id, game_id: last.id , stars: 5, comments: "Holy shit, that was a good game!!"})
lalo_reivew4 = Rating.create({reviewer_id: lalo.id, game_id: kombat.id , stars: 4, comments: "Dude these fatalities are awesome!" })
lalo_reivew5 = Rating.create({reviewer_id: lalo.id, game_id: cod.id , stars: 3, comments: "These games aren't what they used to be." })
lalo_reivew6 = Rating.create({reviewer_id: lalo.id, game_id: sky.id , stars: 1, comments: "WHAT IS THIS TRASH?!" })
lalo_reivew7 = Rating.create({reviewer_id: lalo.id, game_id: fallout.id , stars: 2, comments: "What a werid game." })
lalo_reivew8 = Rating.create({reviewer_id: lalo.id, game_id: anthem.id , stars: 2, comments: "Really had high hopes for it." })

kyle_review1 = Rating.create({reviewer_id: kyle.id, game_id: final.id , stars: 2, comments: "The graphics aren't even good!" })
kyle_review2 = Rating.create({reviewer_id: kyle.id, game_id: hearts.id , stars: 2, comments: "Couldn't tell what that story was about! At least the graphics were good." })
kyle_review3 = Rating.create({reviewer_id: kyle.id, game_id: last.id, stars: 5, comments: "This game is so good!" })
kyle_review4 = Rating.create({reviewer_id: kyle.id, game_id: kombat.id , stars: 5, comments: "Dude I love it when they kill each other!" })
kyle_review5 = Rating.create({reviewer_id: kyle.id, game_id: cod.id , stars: 4, comments: "Will continue to buy these games!" })
kyle_review6 = Rating.create({reviewer_id: kyle.id, game_id: sky.id, stars: 2, comments:  "Boring game."})
kyle_review7 = Rating.create({reviewer_id: kyle.id, game_id: fallout.id, stars: 2, comments: "WACK." })
kyle_review8 = Rating.create({reviewer_id: kyle.id, game_id: anthem.id, stars: 4, comments: "Pretty fun game." })

joyce_review1 = Rating.create({reviewer_id: joyce.id, game_id: final.id, stars: 4, comments: "Still holds up!"})
joyce_review2 = Rating.create({reviewer_id: joyce.id, game_id: hearts.id, stars: 3, comments: "What a cute game!"})
joyce_review3 = Rating.create({reviewer_id: joyce.id, game_id: last.id, stars: 4, comments: "It was like controlling a movie. So well made!"})
joyce_review4 = Rating.create({reviewer_id: joyce.id, game_id: kombat.id, stars: 1, comments: "Not appropriate AT ALL."})
joyce_review5 = Rating.create({reviewer_id: joyce.id, game_id: cod.id, stars: 2, comments: "Too violent."})
joyce_review6 = Rating.create({reviewer_id: joyce.id, game_id: sky.id, stars: 2, comments: "Felt really lost playing this game."})
joyce_review7 = Rating.create({reviewer_id: joyce.id, game_id: fallout.id, stars: 1, comments: "REALLY felt lost playing this game."})
joyce_review8 = Rating.create({reviewer_id: joyce.id, game_id: anthem.id, stars: 4, comments: "I like this game."})

maria_review1 = Rating.create({reviewer_id: maria.id, game_id: final.id, stars: 4, comments: "Man I love this game!"})
maria_review2 = Rating.create({reviewer_id: maria.id, game_id: hearts.id, stars: 3, comments: "Confusing plot but, still fun!"})
maria_review3 = Rating.create({reviewer_id: maria.id, game_id: last.id, stars: 5, comments: "INCREDIBLE. Absolutely loved it!"})
maria_review4 = Rating.create({reviewer_id: maria.id, game_id: kombat.id, stars: 2, comments: "Fun but gross."})
maria_review5 = Rating.create({reviewer_id: maria.id, game_id: cod.id, stars:  2, comments: "Super overplayed."})
maria_review6 = Rating.create({reviewer_id: maria.id, game_id: sky.id, stars:  1, comments: "I don't even know what this is!!"})
maria_review7 = Rating.create({reviewer_id: maria.id, game_id: fallout.id, stars:  1, comments: "MEGA Crap."})
maria_review8 = Rating.create({reviewer_id: maria.id, game_id: anthem.id, stars:  3, comments: "Crap."})

kelly_review1 = Rating.create({reviewer_id: kelly.id, game_id: final.id, stars: 2, comments: "Boring." })
kelly_review2 = Rating.create({reviewer_id: kelly.id, game_id: hearts.id, stars: 3, comments: "Pretty but, werid." })
kelly_review3 = Rating.create({reviewer_id: kelly.id, game_id: last.id, stars: 4, comments: "So sad!!" })
kelly_review4 = Rating.create({reviewer_id: kelly.id, game_id: kombat, stars: 1, comments: "EWWW!" })
kelly_review5 = Rating.create({reviewer_id: kelly.id, game_id: cod.id, stars: 1, comments: "Gun games are dumb." })
kelly_review6 = Rating.create({reviewer_id: kelly.id, game_id: sky.id, stars: 1, comments: "Super Boring." })
kelly_review7 = Rating.create({reviewer_id: kelly.id, game_id: fallout.id, stars: 1, comments: "Burn it in a fire." })
kelly_review8 = Rating.create({reviewer_id: kelly.id, game_id: anthem.id, stars: 3, comments: "Kinda cool, I guess." })`
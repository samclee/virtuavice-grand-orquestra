local convos = {}

convos[1] = function()
  freya 'Wow. This place is way bigger than I thought it would be.'

  tera 'With a name like \'The Demon King\', that seems a given.'
  tera 'Evil guys tend to have big, evil fortresses.'
  tera 'I think it\'s some agreed upon contract between those in The Evil Club.'

  neme 'Wait.'
  neme 'There\'s an Evil Club?'
  neme 'I have not read of such an organization in my studies.'

  freya 'She was joking Neme. There isn\'t a real \'Evil Club\'.'
  freya '....'

  tera '....'

  freya 'Is there?'

  tera '....'

  neme '....'

  freya '....'

  tera 'There\'s no Evil Club, I was kidding.'
  tera 'For now, we have some answers to find and a Demon King to deal with.'

  freya '*whispers to self* I knew there wasn\'t an Evil Club.'
  freya 'Dumbest thing I\'ve ever heard.'
  neme 'Haha, you\'ll get em next time Sis.'

end

convos[2] = function()
  tera 'Oh! A book!'
  tera 'Does it say anything helpful Neme?'
  
  neme 'Uhhhh I don\'t know. Give me a second to read.'
  neme '.....'

  tera '.....' 
  tera 'Have you been practicing the breathing exercises I gave you?'
  tera 'Have they been helpful with the magical outbursts?'

  neme 'Yeah actually. It\'s been really helpful.'
  neme 'Though I haven\'t read in any of my studies that \'breathing\' is a'
  neme 'magical cure or controlling mechanism for abilities like mine.'

  tera 'Sometimes there are things more powerful than magic'
  tera 'that we can\'t explain.'
  tera 'Maybe the simple thing that works is just as important as having'
  tera 'a book or rune tell you what it means.'
  tera 'Your books don\'t have a reason why getting emotional'
  tera 'makes your powers change.'

  neme 'No they don\'t.'
  neme 'I guess I didn\'t think about it that way.'
  neme '....'
  neme 'Interesting. Apparently the Demon King had another name.'
  neme 'Geralk.'
  neme 'He has some entries in here about how his powers have changed.'
  neme 'Didn\'t have very good control over his feelings and it spiraled'
  neme 'out of control.'
  neme 'Kind of sad if you think about it.'
  neme 'Guess he could\'ve used some breathing exercises.'
end

convos[3] = function()
  freya 'Not super easy to follow tracks on a carpet and stone floor'
  freya 'if I\'m being honest.'
  
  tera 'Guess we\'ll have to find him the old-fashioned way.'

  tera 'By the way, you haven\'t told Neme about your worries with'
  tera 'his magic have you?'
  
  freya 'No. But he\'ll be able to understand more if his magic will corrupt him or'
  freya 'not from the the things we find here.'

  tera 'You don\'t have to worry, you know.'
  tera 'We\'ll both be here at his side no matter what.'

  freya 'I know that.'
  freya 'Thank you, Tera.'
end

convos[4] = function()
  neme '.....'
  neme 'You ever wonder why we\'re here?'

  freya 'What do you mean?'
  freya 'Like in this castle?'
  freya 'Or here in Alcoast?'

  neme 'Here as heroes.'
  neme 'It could have been anyone, but we decided to show up and'
  neme 'fight the Demon King on our own.'

  freya 'I don\'t know. I guess we made the decision that felt right.'
  freya 'Isn\'t that what heroes do?'

  neme 'Maybe.'
  neme 'This book talks about others with magic like me.'
  neme 'There\'s magic that permeates the entire Alcoast apparently.'
  neme 'Maybe I\'m not the only one.'
  neme 'Maybe it could have been someone else.'

  freya '....'
end

convos[5] = function()
  freya 'It\'s over Demon King!'
  freya 'Your tyranny is over.'
  freya 'We can do this the easy way or the hard way.'
  freya 'And I don\'t want to cause any more trouble than you\'re worth.'

  tera 'You have a lot to pay for.'
  tera 'We won\'t mind going down the difficult route'
  tera 'if that\'s what you force us to do.'

  boss 'You think you\'re the first adventurers I\'ve met?'
  boss 'The first ones who speak with big threats'
  boss 'and grand ideas of \'goodness\'?'
  boss 'But now I know my path is the one others are too afraid to tread.'
  boss 'You were fools to come here.'
  boss 'You\'ll need at least an army to take me down.'

  neme 'We have the power of one hundred armies.'
  neme 'And so help me... if you hurt a hair on my friends\' heads, my power will be a force you cannot even reckon with.'
  
  boss 'Your heart amuses me, small wizard.'
  boss 'I\'ll make this battle swift and decisive.'
end

convos[6] = function()
  msg '=BATTLE START='

  option 'Now you\'ve forced our hand.'
  option 'You\'re a monster!'
  option 'We\'ll stop you here and now'
  menu ''

  msg '*Neme and Freya attack together!'

  wait(2)
  atk({2,3})
  freya 'We gave you a chance to do the right thing'
  wait(nil)
  atk(nil)
  freya 'but I guess it\'s time to finish what someone should have long ago.'
  neme 'You\'re misguided and warp the very name of magic.'
  neme 'Not only will we finish this fight but I will make sure'
  neme 'you can never ruin the natural balance ever again!'

  portrait(nil)
  option 'Now you\'ve forced our hand.'
  option 'You\'re a monster!'
  option 'We\'ll stop you here and now'
  menu ''

  msg '*Tera and Freya attack together!'
  tera 'Fire, Freya!'
  freya '*deep breath*'

  wait(2)
  atk({1,3})
  tera 'This will be the last battle you ever fight, you tyrant!'
  wait(nil)
  atk(nil)
  tera 'This ends here and now!'

  portrait(nil)
  option 'Now you\'ve forced our hand.'
  option 'You\'re a monster!'
  option 'We\'ll stop you here and now'
  menu ''

  msg '*Tera and Neme attack together!'

  wait(2)
  atk({1,2})
  tera 'Your armies attacked my home with no regard to innocent life!'
  wait(nil)
  atk(nil)
  tera 'We didn\'t do anything to deserve it!'
  neme 'Your magic corrupts what makes this world beautiful!'
  neme 'You\'ve taken a force that connects us all'
  neme 'and warped it into a sick tool for control!'

  portrait(nil)
  msg '*The Demon King attacks!'
  msg '*The Demon King uses \"You have no hope\"'

  wait(2)
  atk({4})
  boss 'I\'ve been harnessing my power for decades.'
  wait(nil)
  atk(nil)
  boss 'Why do you think I\'ve never been defeated until now?'
  boss 'I can withstand any physical attack!'
  boss 'Armies flock around me.'
  wait(1)
  atk({4})
  boss 'You.'
  boss 'Are.'
  boss 'Nothing.'
  wait(nil)
  atk(nil)

  tera 'How do our attacks mean nothing?'
  tera 'It\'s like hitting a wall!'
  freya 'Neme! Try to control your emotions!'
  freya 'The magic in you could explode.'
  neme 'THIS IS IMPOSSIBLE!'
  neme 'HOW CAN YOU GET AWAY WITH SUCH EVIL AND BE INVINCIBLE?!'
  neme 'IT\'S...'
  neme 'NOT FAIR!'
end

convos[7] = function()
  tera 'Neme. I need you to breathe in and out.'
  tera 'You can\'t lose control right now.'
  tera 'This magic is more than you\'d be able to absorb.'

  neme 'I just don\'t understand.'
  neme 'How did we lose?'
  neme 'We always find a way out.'
  neme 'But nothing we did had any effect on him.'
  neme 'I don\'t get it...'

  tera 'Neme. Listen to me.'
  tera 'Breathe in.'
  tera 'Breathe out.'
  tera 'Like we practiced.'

  neme '*breathes in* *deep exhale*'
  neme 'Thanks, Tera.'
  neme 'I hope Freya is ok.'

  tera 'Don\'t worry about her.'
  tera 'The three of us always find a way through together.'
  tera 'Keep breathing. We can handle this.'
end

convos[8] = function()
  tera 'Are you okay, Freya?'
  
  freya '*breathes heavily* I think so.'
  freya 'But what about my brother?'
  freya 'He hasn\'t lost control like that since he was little.'

  tera 'He\'ll be ok. I always make sure of it.'

  freya 'Good. *coughs*'
  freya 'Regardless, I don\'t know if we can continue to fight the Demon King'
  freya 'if we start again.'

  tera 'Yeah I\'m feeling pretty tapped out too.'
  tera 'We\'ll figure something out.'

end

convos[9] = function()
  boss 'The adventurers stir once again!'
  boss 'You haven\'t had enough?'
  boss 'Your utter defeat wasn\'t enough to end your persistent meddling'
  boss 'and attack on me?'
  boss 'Guess you were more foolish than I initially thought.'

  tera 'Unlike you, we have the resolve to do what\'s right.'
  tera 'We haven\'t been blinded.'
  tera 'And if it destroys us...so be it.'

  freya 'We\'ve accomplished everything together.'
  freya 'I don\'t see any others here with you offering the'
  freya 'same kind of support.'

  boss 'I don\'t need anyone else!'
  boss 'Everyone who claims to have led me into goodness has been'
  boss 'hypocritical and corrupt in ways I couldn\'t possibly imagine.'
  boss 'The Empire.'
  boss 'The Rebellion.'
  boss 'They\'re all the same.'
  boss 'Power and an iron hand is the only option left for a person betrayed'
  boss 'over and over again.'
  
  neme 'Whatever our flaws, we\'ve never lost sight of ourselves'
  neme 'and our friends.'
  neme 'It\'s obvious that you have, Demon King.'
  neme 'We won\'t rest until your terror imposed on the Alcoast has ended!'

  boss 'Terror.'
  boss 'Justice.'
  boss 'Both words that mean the same thing.'
  boss 'Unfortunately for you, they\'re the last words you\'ll ever hear'
  boss 'as I win utterly once again.'

end

convos[10] = function()
  portrait 'tera1'
  name 'Tera'
  
  msg '=BATTLE2 START='
  msg 'write this battle later'

  portrait 'boss1'
  name 'Boss'
  msg 'damn well you beat me'
end

convos[11] = function()
  geralk 'What am I doing?'
  geralk 'How could I not have seen this sooner?'
  geralk 'Geralk.'
  geralk 'The name an no longer belong to me.'
  geralk 'Geralk was the name of a cleric who was selfless and good in every'
  geralk 'part of his being.'
  geralk 'Before he was hurt.'
  geralk 'Before he was betrayed.'
  geralk 'That is not who I am.'
  geralk 'But I am tired of being angry.'
  geralk 'I can\'t be angry anymore.'
  geralk 'And maybe the world could use selfless and good heroes who don\'t'
  geralk 'have my name anymore.'

  tera 'You\'re just going to leave?'
  tera 'Not answer for what you\'ve done?'

  geralk 'My life has lasted longer than it has needed to for some time now.'
  geralk 'You\'ve given me a sense of peace and hope that I haven\'t felt'
  geralk 'in fifty years.'
  geralk 'This world would be better without my presence.'

  neme 'Everyone has their place and those that love them.'
  neme 'You can do a lot to fix the damage you\'ve done.'
  neme 'You have a chance to reclaim the cleric you once were.'

  freya 'If you can make the decision to change yourself, you prove to'
  freya 'us and everyone else that we\'re fighting for something.'
  freya 'That we don\'t have to make the same mistakes that you did.'

  geralk 'For adventurers, you speak with an innate eloquence...'
  geralk 'Maybe things can be different.'
  geralk 'I can be different.'
  geralk 'Why did you give me a second chance?'

  tera 'Everyone deserves a second chance.'
  geralk 'Even for me?'
  neme 'Even for you.'
  geralk 'Alright. I\'ll try to remember who I was as Geralk.'
  geralk 'Thank you.'
end

--[[convos[2] = function()
  portrait 'tera1'
  name 'Tera' 
  msg 'wow this fucker is tooooough'

  portrait 'neme1'
  name 'Neme' 
  msg 'ikr this shit blows'

  portrait 'tera1'
  name 'Tera' 
  msg 'yup'

  portrait 'neme1'
  name 'Neme' 
  msg '..................'

  portrait 'tera1'
  name 'Tera'
  msg '..............'
  msg 'well bye'
end

convos[3] = function()
  portrait 'tera1'
  name 'Tera'

  msg 'Preboss convo'

  msg 'blah blah blah'

  msg 'time 4 fite'
end

convos[4] = function()
  msg '=BATTLE1 START='

  option 'Tera + Neme'
  option 'Tera + Freya'
  menu 'Which combo should attack?'

  if selection 'Tera + Neme' then
    msg 'Blaze Cross!'
    
    wait(2)
    atk({1,2})
    msg('Critical damage!')
  elseif selection 'Tera + Freya' then
    msg 'Celestial Arrow!'
    
    wait(2)
    atk({1,3})
    msg('Highly effective!')
  end

  -- MUST RESET
  wait(nil)
  atk(nil)
  portrait 'tera1'
  name 'Tera'
  msg 'Wowee what a lot of dmg'

  portrait 'boss1'
  name 'Boss'
  msg 'lmao as if'
  msg 'see ya bich'
end

convos[5] = function()
  portrait 'tera1'
  name 'Tera' 
  msg 'gdsasasds'

  portrait 'freya1'
  name 'Freya' 
  msg 'qwewqrewreewrqwerwerq'

  portrait 'tera1'
  name 'Tera' 
  msg 'tvfvffvvtftvfvftvtfvtf'

  portrait 'freya1'
  name 'Freya'
  msg 'good talk'
end

convos[6] = function()
  portrait 'tera1'
  name 'Tera'

  msg 'Preboss convo 2'

  msg 'blah blah blah'

  msg 'time 4 fite'

  msg '...again'
end

convos[7] = function()
  msg '=BATTLE2 START='

  msg 'i dont feel like writing anymore'

  msg 'okay yeah thats the end'
end

convos[8] = function()
  portrait 'tera1'
  name 'Tera'

  msg 'yey we won'

  msg 'w00t'

  msg 'okay time for credits'
end]]

return convos
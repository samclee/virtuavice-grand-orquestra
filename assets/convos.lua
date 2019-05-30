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

  freya '*whispers to self* I knew there wasn\'t an Evil Club. Dumbest thing I\'ve ever heard.'
  neme 'Haha, you\'ll get em next time Sis.'

end

convos[2] = function()
  tera 'Oh! A book!'
  tera 'Does it say anything helpful Neme?'
  
  neme 'Uhhhh I don’t know. Give me a second to read.'
  neme '.....'

  tera '.....' 
  tera 'Have you been practicing the breathing exercises I gave you?'
  tera 'Have they been helpful with the magical outbursts?'

  neme 'Yeah actually. It’s been really helpful.'
  neme 'Though I haven’t read in any of my studies that \'breathing\' is a magical cure or controlling mechanism for abilities like mine.'

  tera 'Sometimes there are things more powerful than magic that we can’t explain.'
  tera 'Maybe the simple thing that works is just as important as having a book or rune tell you what it means.'
  tera 'Your books don’t have a reason why getting emotional makes your powers change.'

  neme 'No they don\'t. I guess I didn’t think about it that way.'
  neme '....'
  neme 'Interesting. Apparently the Demon King had another name.'
  neme 'Geralk'
  neme 'He has some entries in here about how his powers have changed.'
  neme 'Didn\'t have very good control over his feelings and it spiraled out of control.'
  neme 'Kind of sad if you think about it.'
  neme 'Guess he could\'ve used some breathing exercises.'
end

convos[3] = function()
  freya 'Not super easy to follow tracks on a carpet and stone floor if I\'m being honest.'
  
  tera 'Guess we\'ll have to find him the old-fashioned way.'

  tera 'By the way, you haven\'t told Neme about your worries with his magic have you?'
  
  freya 'No. But he’ll be able to understand more if his magic will corrupt him or not from the the things we find here.'

  tera 'You don\'t have to worry, you know. We\'ll both be here at his side no matter what.'

  freya 'I know that. Thank you, Tera.'
end

convos[4] = function()
  neme '.....'
  neme 'You ever wonder why we\'re here?'

  freya 'What do you mean?'
  freya 'Like in this castle?'
  freya 'Or here in Alcoast?'

  neme 'Here as heroes.'
  neme 'It could have been anyone, but we decided to show up and fight the Demon King on our own.'

  freya 'I don\'t know. I guess we made the decision that felt right. Isn\'t that what heroes do?'

  neme 'Maybe.'
  neme 'This book talks about others with magic like me.'
  neme 'There\'s magic the permeates the entire Alcoast apparently.'
  neme 'Maybe I’m not the only one.'
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
  msg '=BATTLE1 START='

  portrait 'tera1'
  name 'Tera'
  msg 'Neme, it\'s time to use...'
  msg 'THAT'

  portrait 'freya1'
  name 'Freya'
  msg 'You don\'t mean????'

  portrait 'neme1'
  name 'Neme'
  msg 'Super-hyper-ultra-mega attack'

  portrait 'tera1'
  name 'Tera'
  msg 'Blaze Cross!'
  
  portrait(nil)
  wait(2)
  atk({1,2})
  msg('*Critical damage!')


  -- MUST RESET
  wait(nil)
  atk(nil)
  portrait 'tera1'
  name 'Tera'
  msg 'Wowee what a lot of dmg'

  portrait 'boss1'
  name 'Boss'
  msg 'lmao as if'
  msg 'ur ded kid'
  msg 'FINALE METEOR CRUSH'

  wait(2)
  atk({4})
  msg('DIE')

  wait(nil)
  atk(nil)
  portrait 'tera1'
  name 'Tera'
  msg 'damn we fukn dead'

  portrait 'neme1'
  name 'Neme'
  msg 'this dude is literally too strong'

  portrait 'freya1'
  name 'Freya'
  msg 'tvasvckvcnxcvmn,vxnm,ccvnm,xmn'
end

convos[7] = function()
  portrait 'tera1'
  name 'Tera'
  
  msg 'Neme intermission'
  msg 'To be replaced'

  portrait 'neme1'
  name 'Neme'
  msg 'something inspiring'
  msg 'power of friendship ya know'
end

convos[8] = function()
  portrait 'tera1'
  name 'Tera'
  
  msg 'Freya intermission'
  msg 'To be replaced'

  portrait 'freya1'
  name 'Freya'
  msg 'something motivational'
  msg 'we gotta save the universe bluh bluh bluh'
end

convos[9] = function()
  portrait 'tera1'
  name 'Tera'
  msg 'Preboss convo2'
  msg 'To be replaced'
  msg 'we gonna kick ur ass'

  portrait 'boss1'
  name 'Boss'
  msg 'try me bih'
  msg 'i am 1000000x stronger'
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
  portrait 'tera1'
  name 'Tera'
  msg 'yey we won'


  portrait 'neme1'
  name 'Neme'
  msg 'sick nasty dope cool'

  portrait 'freya1'
  name 'Freya'
  msg 'tvasvckvcnxcvmn,vxnm,ccvnm,xmn'

  portrait(nil)
  msg 'TODO: credits'
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
local convos = {}

convos[1] = function()
  portrait 'tera1'
  name 'Tera'
  msg 'aw shit time for adventure'

  portrait 'neme1'
  name 'Neme'
  msg 'gonna kill that demon king'

  portrait 'freya1'
  name 'Freya'
  msg 'im the only one with art rn'

  portrait 'tera1'
  name 'Tera'
  msg 'dadfafdfddfsdadfd'
end

convos[2] = function()
  portrait 'tera1'
  name 'Tera'
  
  msg 'Indoor conversation1'
  msg 'To be replaced'

  portrait 'neme1'
  name 'Neme'
  
  msg 'Indoor conversation1'
  msg 'To be replaced'
end

convos[3] = function()
  portrait 'tera1'
  name 'Tera'
  
  msg 'Indoor conversation2'
  msg 'To be replaced'

  portrait 'freya1'
  name 'Freya'
  
  msg 'Indoor conversation2'
  msg 'To be replaced'
end

convos[4] = function()
  portrait 'neme1'
  name 'Neme'
  
  msg 'Indoor conversation3'
  msg 'To be replaced'

  portrait 'freya1'
  name 'Freya'
  
  msg 'Indoor conversation3'
  msg 'To be replaced'
end

convos[5] = function()
  portrait 'tera1'
  name 'Tera'
  
  msg 'preboss convo1'
  msg 'you killed my family etc.'

  portrait 'boss1'
  name 'Boss'
  
  msg 'preboss convo1'
  msg 'prepare to die etc.'
end

convos[6] = function()
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
  msg 'ur ded kid'
  msg 'i am the boss hehehehehehe'

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
  msg 'poooooooooooooooooooooooop'
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
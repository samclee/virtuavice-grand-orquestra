local convos = {}

convos[1] = function()
  portrait 'tera1'
  name 'Tera'
  
  msg 'aw shit time for adventure'

  msg 'gonna kill that demon king'

  option 'Kill'
  option 'Reason'
  menu 'What will I do?'

  if selection 'Kill' then
    msg 'Do I really want to kill him?'
    msg 'Am I capable of that?'
  elseif selection 'Reason' then
    msg 'Do I really want to save him?'
    msg 'After everthing he\'s done?'
  end

  msg 'mmmm who cares'

  portrait 'neme1'
  name 'Neme'
  msg 'o shit it me'

  portrait 'freya1'
  name 'Freya'
  msg 'adsfadsfdsfa'

  portrait(nil)
  msg 'This coninued for 4 hours'

  portrait 'tera1'
  name 'Tera'
  msg 'lets fuking kill him'

end

convos[2] = function()
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
  msg '=BATTLE START='

  option 'Tera + Neme'
  option 'Neme + Freya'
  menu 'Which combo should attack?'

  if selection 'Tera + Neme' then
    msg 'Blaze Cross!'
    
    wait(2)
    atk({1,2})
    msg('Critical damage!')
  elseif selection 'Neme + Freya' then
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

return convos
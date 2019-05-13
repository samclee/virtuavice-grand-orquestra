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
  name 'Freya'
  msg 'lets fuking kill him'

end

convos[2] = function()
  portrait 'tera1'
  name 'Tera'
  
  msg 'I can\'t hold back.'
  msg 'And I won\'t give up!'

  portrait(nil)

  msg 'Tera\'s resolve is unbreakable!'
  msg 'Defense UP!'

  portrait 'tera1'
  name 'Tera'

  msg 'EAT THIS!'
end


convos[3] = function()
  portrait 'tera1'
  name 'Tera'

  msg 'Preboss convo'

  msg 'blah blah blah'

  msg 'time 4 fite'
end

convos[4] = function()
  msg 'okay lets try this shit out'

  option 'Tera + Neme'
  option 'Neme + Freya'
  menu 'Which combo should attack?'

  if selection 'Tera + Neme' then
    msg 'Blaze Cross!'
    
    wait(2)
    atk({1,3})
    msg('Critical damage!')
  elseif selection 'Neme + Freya' then
    msg 'Celestial Arrow!'
    
    wait(2)
    atk({1,2})
    msg('Highly effective!')
  end

  -- MUST RESET
  wait(nil)
  atk(nil)
  portrait 'tera1'
  name 'Tera'
  msg 'Wowee what a lot of dmg'

  msg 'end'


end

return convos
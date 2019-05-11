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
  
  msg 'Special ability, wait for a second'
  wait(5)

  msg 'Wbamo, I\'m back'

end

return convos
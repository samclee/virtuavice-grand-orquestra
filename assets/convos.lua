local convos = {}

convos[1] = function()
  portrait 'tera1'
  name 'Tera'
  
  msg 'I have to stop this.'

  msg 'The Demon King has rampaged long enough.'

  option 'Kill'
  option 'Save'
  menu 'What will I do?'

  if selection 'Kill' then
    msg 'Do I really want to kill him?'
    msg 'Is it possible he\'s still a good person'
  elseif selection 'Save' then
    msg 'Do I really want to save him?'
    msg 'After everthing he\'s done?'
  end

  msg 'This...is not an easy choice'
end

convos[2] = function()
  msg 'Found one [Sword of Truth]'

  option 'Toss'
  option 'Equip'
  menu 'Equip or Toss?'
  if selection 'Equip' then
    msg 'Equipped the weapon'
  elseif selection 'Toss' then
    msg 'Tossed weapon'
  end
end

return convos
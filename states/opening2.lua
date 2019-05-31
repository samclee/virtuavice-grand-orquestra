local Opening2 = {}
local camy = 300
local floor = 3000

local st = [[
Fifty years ago, a rebellion started to brew against the Alcoast Kingdom. Dissatisfied with their King, the group preached of a world that looked more equal and kind than the current one. Inevitably, the rebellion quickly resorted to violence and civil war broke out.

A King\'s Cleric by the name of Geralk, found himself caught in a conflicting space of wanting to help those in need and also being forbidden to by the armies he fought with.

After being betrayed by the Royal Army and witnessing the hypocritical horrors of the rebellion, Geralk had no other choice but to take matters into his own hands.

Fifty years later, Geralk has been given another name: “The Demon King”. He lays waste up and down the entirety of the Alcoast. Another group of heroes with a more hopeful fate now approach his lair in an attempt to put an end to his absolute rule...
]]

function Opening2:enter(from)
  lg.setFont(fonts.dialog)
  s:lookAt(400,camy)
end

function Opening2:update(dt)
  s:update(dt)
  s:lookAt(400, camy)
  
  if camy < 3000 then
    camy = camy + 1
  end

  if input:pressed 'action' then
    fadeOut('title')
  end
end

function Opening2:draw()
  s:scale_on()
    lg.setColor(skyColor)
    lg.rectangle('fill', 0, 0, 800, 600)
  s:scale_off()

  s:on()
  --draw text
  lg.setColor(0,0,0)
  lg.printf(st, 100,600,600, 'center')


  -- draw floor


  s:off()
end

function Opening2:keypressed(k)
  if k == 'q' then

  end
end

return Opening2
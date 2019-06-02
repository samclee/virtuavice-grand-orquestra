local Opening2 = {}
local camy = 300
local floor = 1818

local st = [[
Fifty years ago, in the kingdom of Alcoast, civil war raged across the countryside.

Disgusted by this conflict, a mage by the name of Geralk used dark magic to conquer the entire land. 

His dictatorship and dark magic earned him the title, "Demon King."

Today, three heroes set out to defeat the Demon King and end his rule.
]]

function Opening2:enter(from)
  lg.setFont(fonts.dialog)
  s:lookAt(400,camy)
end

function Opening2:update(dt)
  s:update(dt)
  s:lookAt(400, camy)
  
  if camy < floor then
    camy = camy + 0.75
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
  lg.setColor(.7,.7,.7)
  lg.draw(assets.mtn2,0,floor-300+230,0,1,0.7)
  lg.setColor(1,1,1)
  lg.draw(assets.mtn,0,floor-300+300,0,1,0.7)
  lg.draw(assets.grs,0,floor-300)


  s:off()
end

function Opening2:keypressed(k)
  print(camy)
end

return Opening2
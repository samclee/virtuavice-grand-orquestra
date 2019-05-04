local Opening2 = {}
local camy = 300
local hgt = 1800
local centerBtm = hgt - 300

function Opening2:enter(from)
  lg.setFont(fonts.dialog)
  s:lookAt(400,camy)
end

function Opening2:update(dt)
  s:update(dt)
  s:lookAt(400, camy)
  
  if camy < centerBtm then 
    camy = camy + 0.5
  end

  if input:pressed 'action' and camy >= centerBtm then
    fadeOut('title')
  end
end

function Opening2:draw()
  s:on()
  lg.setColor(67/255, 192/255, 251/255)
  lg.rectangle('fill', 0, 0, 800, 1800)

  --draw text
  lg.setColor(0,0,0)
  lg.printf('Exposition goes here blah blah blah. Whoopedy doo. asdfhasdkfhksdakhjafjhkasdfkj', 100,600,600, 'center')

  lg.printf('More story here. Dunno how much we need. Let\'s try to keep this easy to read. Maybe end on something ominous...', 100,900,600, 'center')


  -- draw parallax
  lg.setColor(0,0,0)
  lg.rectangle('fill',0,centerBtm + 200,800,100)
  lg.setColor(1,1,1)

  s:off()
end

return Opening2
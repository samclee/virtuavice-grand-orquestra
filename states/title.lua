local Title = {}
local showStart = false
local handle = nil

function Title:enter(from)
  s:lookAt(400,300)
  s:setDraw(true)
  s:setColorTo({1,1,1,1})
  s:fadeTo({1,1,1,0}, 2)

  handle = ti.every(0.5, function() showStart = not showStart end)
end

function Title:update(dt)
  s:update(dt)

  if input:pressed 'action' then
    ti.cancel(handle)
    fadeOut('outdoor',2)
  end
end

function Title:draw()
s:on()

  lg.setColor(skyColor)
  lg.rectangle('fill', 0, 0, 800, 600)

  lg.setColor(0,0,0)
  lg.rectangle('fill',0,500,800,100)

  lg.setColor(1,1,1)
  if showStart then
    lg.setFont(fonts.big)
    lg.printf('[Press any key to start]',0,450,800,'center')
  end

  lg.setFont(fonts.big)
  lg.printf('GAME TITLE/LOGO',0,200,800,'center')
  
s:off()
end

return Title
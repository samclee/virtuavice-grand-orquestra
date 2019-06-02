local Title = {}
local showStart = false
local handle = nil

local mx, gx, mx2= 0,0,0

function Title:enter(from)
  s:lookAt(400,300)
  s:setDraw(true)
  lg.setFont(fonts.big)
  s:setColorTo({1,1,1,1})
  s:fadeTo({1,1,1,0}, 2)

  handle = ti.every(1, function() showStart = not showStart end)
end

function Title:update(dt)
  s:update(dt)

  if input:pressed 'action' then
    ti.cancel(handle)
    fadeOut('outdoor',2)
  end

  mx2 = mx2 - 0.1
  mx = mx - 0.25
  gx = gx - 0.5

  if gx < -1600 then gx = 0 end
end

function Title:draw()
s:on()

  lg.setColor(skyColor)
  lg.rectangle('fill', 0, 0, 800, 600)

  lg.setColor(.7,.7,.7)
  lg.draw(assets.mtn2,mx2,230,0,1,0.7)
  lg.setColor(1,1,1)
  lg.draw(assets.mtn,mx,300,0,1,0.7)
  lg.draw(assets.grs2,gx,0)

  if showStart then
    lg.setColor(0,0,0)
    local w = 3
    lg.printf('[Press any key to start]',-w,450-w,800,'center')
    lg.printf('[Press any key to start]',w,450+w,800,'center')
    lg.printf('[Press any key to start]',-w,450+w,800,'center')
    lg.printf('[Press any key to start]',w,450-w,800,'center')
    lg.printf('[Press any key to start]',0,450+w,800,'center')
    lg.printf('[Press any key to start]',0,450-w,800,'center')
    lg.setColor(1,1,1)
    lg.printf('[Press any key to start]',0,450,800,'center')
  end

  lg.draw(assets.logo,400 - assets.logo:getWidth() / 2,30)

  
s:off()
end

return Title
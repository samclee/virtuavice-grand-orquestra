local Roof = {}

local Boss = BossChar:new({x = 800, y = 159, to = 'opening'})

local Party = CharTrain:new({153, 159, 153, 159, 153, 159})

function Roof:enter()
  s:setColorTo({0,0,0,1})
  s:fadeTo({0,0,0,0},2)
end

function Roof:update(dt)
  s:update(dt)
  local dx, dy = input:get 'move'

  Party:update(dt, dx, dy)
  s:lookAt(Party.chars[1].pos.x, Party.chars[1].pos.y)
end

function Roof:draw()
s:scale_on()
  lg.setColor(skyColor)
  lg.rectangle('fill', 0, 0, 800, 600)
  lg.setColor(1,1,1)
s:scale_off()

s:on()
  lg.draw(assets.roof,0,0,0,2.5,2.5)
  Party:draw()
  Boss:draw()
s:off()
end

return Roof
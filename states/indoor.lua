local Indoor = {}

local Party = CharTrain:new({857, 1249, 857, 1349, 857, 1449})

local roofPortal = Portal:new(
  {x = 1129, y = 246, r = 25, to = 'roof'}
)

function Indoor:enter()

  s:setColorTo({0,0,0,1})
  s:fadeTo({0,0,0,0},2)
end

function Indoor:update(dt)
  s:update(dt)
  local dx, dy = input:get 'move'

  Party:update(dt, dx, dy)
  s:lookAt(Party.chars[1].pos.x, Party.chars[1].pos.y)

  roofPortal:check(Party.chars[1].pos)
end

function Indoor:draw()
s:on()
  lg.draw(assets.indoor,0,0,0,2.5,2.5)
  Party:draw()
s:off()
end

return Indoor
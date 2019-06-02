local Indoor = {}

local Party = CharTrain:new({769, 1717, 769, 1717, 769, 1717})
local podiums = {
  Chest:new({x = 423, y = 1352, convo = 2}),
  Chest:new({x = 867, y = 996, convo = 3}),
}

local roofPortal = Portal:new({x = 1353, y = 1011, r = 25, to = 'roof'})

function Indoor:enter()

  s:setColorTo({0,0,0,1})
  s:fadeTo({0,0,0,0},2)
end

function Indoor:update(dt)
  s:update(dt)
  local dx, dy = input:get 'move'

  Party:update(dt, dx, dy)
  s:lookAt(Party.chars[1].pos.x, Party.chars[1].pos.y)

  if input:pressed 'action' then
    for _,p in pairs(podiums) do
      p:check(Party.chars[1].pos)
    end
  end

  roofPortal:check(Party.chars[1].pos)
end

function Indoor:draw()
s:on()
  lg.draw(assets.indoor,0,0,0,2.5,2.5)
  for _,p in pairs(podiums) do
    p:draw()
  end
  Party:draw()

s:off()
end

return Indoor
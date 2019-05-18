local Indoor = {}

local Party = CharTrain:new({857, 1249, 857, 1249, 857, 1249})
local podiums = {
  TalkChar:new({x = 450, y = 964, w = 72, h = 72, convo = 2, sprx = 432}),
  TalkChar:new({x = 1142, y = 782, w = 72, h = 72, convo = 3, sprx = 432}),
  TalkChar:new({x = 1511, y = 504, w = 72, h = 72, convo = 4, sprx = 432})
}

local roofPortal = Portal:new({x = 1129, y = 246, r = 25, to = 'roof'})

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
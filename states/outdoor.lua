local Outdoor = {}

local Party = CharTrain:new({533, 1305, 493, 1345, 523, 1395})

local inPortal = Portal:new(
  {x = 546, y = 592, r = 25, to = 'indoor'}
)

function Outdoor:enter(from)
  s:fadeTo({1,1,1,0},2)
  s:lookAt(Party.chars[1].pos.x, Party.chars[1].pos.y)
end

function Outdoor:update(dt)
  s:update(dt)
  local dx, dy = input:get 'move'

  Party:update(dt, dx, dy)
  s:lookAt(Party.chars[1].pos.x, Party.chars[1].pos.y)
  
  inPortal:check(Party.chars[1].pos)
end

function Outdoor:draw()

s:scale_on()
  lg.setColor(skyColor)
  lg.rectangle('fill', 0, 0, 800, 600)
  lg.setColor(1,1,1)
s:scale_off()

s:on()
  lg.draw(assets.outdoor,0,0,0,2.5,2.5)
  Party:draw()
s:off()
end

function Outdoor:keypressed(k)
  if k == 'c' then
    gs.push(states.convo, convos[1])
  end
end

return Outdoor
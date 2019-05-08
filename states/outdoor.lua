local Outdoor = {}

local Tera = OverworldChar:new(
  {x = 533, y = 1305, idle = anims.tera_idle, walk = anims.tera_walk}
)

local inPortal = Portal:new(
  {x = 546, y = 592, r = 25, to = 'indoor'}
)

function Outdoor:enter(from)
  s:fadeTo({1,1,1,0},2)
end

function Outdoor:update(dt)
  s:update(dt)
  local dx, dy = input:get 'move'

  Tera:update(dt)
  Tera:move(dx, dy)
  s:lookAt(Tera.pos.x, Tera.pos.y)
  inPortal:check(Tera.pos)
end

function Outdoor:draw()

s:scale_on()
  lg.setColor(skyColor)
  lg.rectangle('fill', 0, 0, 800, 600)
  lg.setColor(1,1,1)
s:scale_off()

s:on()
  lg.draw(assets.outdoor,0,0,0,2.5,2.5)
  Tera:draw()
s:off()
end

function Outdoor:keypressed(k)
  if k == 'c' then
    gs.push(states.convo, convos[1])
  end
end

return Outdoor
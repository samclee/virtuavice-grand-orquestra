local Indoor = {}

local Tera = OverworldChar:new(
  {x = 857, y = 1249, idle = anims.tera_idle, walk = anims.tera_walk}
)

local roofPortal = Portal:new(
  {x = 1116, y = 456, r = 25, to = 'roof'}
)

function Indoor:enter()

  s:setColorTo({0,0,0,1})
  s:fadeTo({0,0,0,0},2)
end

function Indoor:update(dt)
  s:update(dt)
  local dx, dy = input:get 'move'

  Tera:update(dt)
  Tera:move(dx, dy)
  s:lookAt(Tera.pos.x, Tera.pos.y)
  roofPortal:check(Tera.pos)
end

function Indoor:draw()
s:on()
  lg.draw(assets.indoor,0,0,0,2.5,2.5)
  Tera:draw()
s:off()
end

return Indoor
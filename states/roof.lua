local Roof = {}

local Tera = OverworldChar:new(
  {x = 153, y = 159, idle = anims.tera_idle, walk = anims.tera_walk}
)

function Roof:enter()
  s:setColorTo({0,0,0,1})
  s:fadeTo({0,0,0,0},2)
end

function Roof:update(dt)
  s:update(dt)
  local dx, dy = input:get 'move'

  Tera:update(dt)
  Tera:move(dx, dy)
  s:lookAt(Tera.pos.x, Tera.pos.y)
end

function Roof:draw()
s:scale_on()
  lg.setColor(skyColor)
  lg.rectangle('fill', 0, 0, 800, 600)
  lg.setColor(1,1,1)
s:scale_off()

s:on()
  lg.draw(assets.roof,0,0,0,2.5,2.5)
  Tera:draw()
s:off()
end

return Roof
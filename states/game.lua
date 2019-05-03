local Game = {}

local Tera = OverworldChar:new(
  {x = 10, y = 10, idle = anims.tera_idle, walk = anims.tera_walk}
)

function Game:enter(from)

end

function Game:resume(from)

end

function Game:update(dt)
  s:update(dt)
  local dx, dy = input:get 'move'

  Tera:update(dt)
  Tera:move(dx, dy)
  s:lookAt(Tera.pos.x, Tera.pos.y)
end

function Game:draw()
s:on()
  
  Tera:draw()


  
s:off()
end

function Game:keypressed(k)
  if k == 'a' then
    gs.push(states.convo, convos[1])
  end
end

return Game
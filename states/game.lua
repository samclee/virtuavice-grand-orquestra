local Game = {}

local Tera = OverworldChar:new(
  {x = 533, y = 1305, idle = anims.tera_idle, walk = anims.tera_walk}
)

local chars = {

}

function Game:enter(from)
  s:fadeTo({1,1,1,0},2)
end

function Game:resume(from)

end

function Game:update(dt)
  s:update(dt)
  local dx, dy = input:get 'move'

  Tera:update(dt)
  Tera:move(dx, dy)
  s:lookAt(Tera.pos.x, Tera.pos.y)

  for _,c in pairs(chars) do
    c:update(dt)
  end

  if input:pressed 'action' then
    for _,c in pairs(chars) do
      c:check(Tera.pos)
    end
  end
end

function Game:draw()
s:on()
  lg.draw(assets.outside,0,0,0,2.5,2.5)

  for _,c in pairs(chars) do
    c:draw()
  end

  Tera:draw()
s:off()
end

function Game:keypressed(k)
  if k == 'a' then
    gs.push(states.convo, convos[4])
  end
end

return Game
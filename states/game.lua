local Game = {}

local Tera = OverworldChar:new(
  {x = 400, y = 300, idle = anims.tera_idle, walk = anims.tera_walk}
)

local chars = {
  TalkChar:new({x = 500, y = 300, idle = anims.neme_walk, convo = 2}),
  TalkChar:new({x = 800, y = 500, idle = anims.freya_walk, convo = 2})
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
  lg.draw(assets.rooms,0,0)

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
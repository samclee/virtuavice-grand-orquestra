local Roof2 = {}

local Tera = OverworldChar:new({x = 600, y = 159, idle = anims.tera_idle, walk = anims.tera_walk})
local Neme = TalkChar:new({x = 250, y = 70, w = 72, h = 72, convo = 7, sprx = 144, r = 80})
local Freya = TalkChar:new({x = 370, y = 220, w = 72, h = 72, convo = 8, sprx = 288, r = 80})


local Boss = BossChar:new({x = 800, y = 159, convo = 9})
function Roof2:enter()
  s:setColorTo({0,0,0,1})
  s:fadeTo({0,0,0,0},2)
end

function Roof2:resume(from, retMsg)
  if retMsg == 'boss' then
    spiralOut('battle1', 10, 'roof3')
  end
end

function Roof2:update(dt)
  s:update(dt)
  local dx, dy = input:get 'move'

  Tera:update(dt)
  Tera:move(dx, dy)
  s:lookAt(Tera.pos.x, Tera.pos.y)

  if input:pressed 'action' then
    Boss:check(Tera.pos)
    Neme:check(Tera.pos)
    Freya:check(Tera.pos)
  end
end

function Roof2:draw()
s:scale_on()
  lg.setColor(skyColor)
  lg.rectangle('fill', 0, 0, 800, 600)
  lg.setColor(1,1,1)
s:scale_off()

s:on()
  lg.draw(assets.roof,0,0,0,2.5,2.5)
  Neme:draw()
  Tera:draw()
  Freya:draw()
  Boss:draw()
s:off()
end

function Roof2:keypressed(k)
  if k == 'c' then
    gs.push(states.convo, convos[4])
  end
end

return Roof2
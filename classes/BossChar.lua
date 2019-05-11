local BossChar = class('BossChar')

function BossChar:initialize(p)
  self.pos = vec(p.x, p.y)

  self.spr = assets.bossSpr
  self.w = assets.bossSpr:getWidth()
  self.h = assets.bossSpr:getHeight()

  self.to = p.to

  self.scale = 1
  self.talked = false
end

function BossChar:update(dt)

end

function BossChar:draw()
  lg.draw(self.spr,self.pos.x, self.pos.y, 0, self.scale, self.scale, self.w/2, self.h/2)
end

function BossChar:check(player_pos)
  if self.talked == false and self.pos:dist(player_pos) < 100 then
    self.talked = true
    gs.switch(states[self.to])
  end
end

return BossChar
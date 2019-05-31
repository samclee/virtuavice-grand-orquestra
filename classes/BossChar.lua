local BossChar = class('BossChar')

function BossChar:initialize(p)
  self.pos = vec(p.x, p.y)

  self.spr = assets.bossSpr
  self.w = assets.bossSpr:getWidth()
  self.h = assets.bossSpr:getHeight()

  self.convo = p.convo

  self.scale = 1
  self.talked = false
end

function BossChar:update(dt)

end

function BossChar:draw()
  --[[lg.setColor(1,0,0)
  lg.circle('line',self.pos.x, self.pos.y,200)
  lg.setColor(1,1,1)]]
  lg.draw(self.spr,self.pos.x, self.pos.y, 0, self.scale, self.scale, self.w/2, self.h/2)
end

function BossChar:check(player_pos)
  if self.pos:dist(player_pos) < 200 then
    gs.push(states.convo, convos[self.convo], 'boss')
  end
end

return BossChar
local Chest = class('Chest')

function Chest:initialize(p)
  self.pos = vec(p.x, p.y)

  self.open_spr = p.open
  self.cur_spr = p.closed

  self.convo = p.convo

  self.w = 64
  self.h = 64
  self.scale = 1.4

  self.opened = false
end

function Chest:check(player_pos)
  if self.opened == false and self.pos:dist(player_pos) < 100 then
    self.cur_spr = self.open_spr
    self.opened = true
    gs.push(states.convo, convos[2])
  end
end

function Chest:draw()
  if self.cur_spr ~= nil then
    lg.draw(self.cur_spr, self.pos.x, self.pos.y, 0, self.scale, self.scale, self.w/2, self.h/2)
  end
  --[[lg.setColor(1,0,0)
  lg.circle('line', self.pos.x, self.pos.y, 100)
  lg.setColorc(1,1,1)]]

end

return Chest
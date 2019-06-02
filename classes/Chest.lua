local Chest = class('Chest')

function Chest:initialize(p)
  self.pos = vec(p.x, p.y)

  self.cur_spr = assets.chest_closed

  self.convo = p.convo

  self.w = assets.chest_closed:getWidth()
  self.h = assets.chest_closed:getHeight()
  self.scale = 1.2

  self.opened = false
end

function Chest:check(player_pos)
  if self.opened == false and self.pos:dist(player_pos) < 100 then
    self.cur_spr = assets.chest_open
    self.opened = true
    gs.push(states.convo, convos[self.convo])
  end
end

function Chest:draw()
  lg.draw(self.cur_spr, self.pos.x, self.pos.y, 0, self.scale, self.scale, self.w/2, self.h/2)
  lg.setColor(1,0,0)
  lg.circle('line', self.pos.x, self.pos.y, 100)
  lg.setColor(1,1,1)

end

return Chest 
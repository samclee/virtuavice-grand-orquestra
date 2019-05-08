local Portal = class('Portal')

function Portal:initialize(p)
  self.pos = vec(p.x, p.y)

  self.r = p.r
  self.to = p.to
  self.inProgress = false
end

function Portal:check(player_pos)
  if self.inProgress == false and self.pos:dist(player_pos) < self.r then
    fadeOut(self.to,0.3,{0, 0, 0, 1})
    self.inProgress = true
  end
end

return Portal
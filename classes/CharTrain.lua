local CharTrain = class('CharTrain')

function CharTrain:initialize(p)
  self.chars = {
    OverworldChar:new({x = p[1], y = p[2], idle = anims.tera_idle, walk = anims.tera_walk}),
    OverworldChar:new({x = p[3], y = p[4], idle = anims.neme_idle, walk = anims.neme_walk}),
    OverworldChar:new({x = p[5], y = p[6], idle = anims.freya_idle, walk = anims.freya_walk})
  }
end

function CharTrain:update(dt, dx, dy)
  if dx == 0 and dy == 0 then
    self.chars[2]:beIdle()
    self.chars[3]:beIdle()
  end

  self.chars[1]:update(dt)
  self.chars[2]:update(dt)
  self.chars[3]:update(dt)

  self.chars[1]:move(dx, dy)
  if (self.chars[2].pos - self.chars[1].pos):len() > 80 then
    self.chars[2]:moveTowards(self.chars[1].pos)
  end
  if (self.chars[3].pos - self.chars[2].pos):len() > 80 then
    self.chars[3]:moveTowards(self.chars[2].pos)
  end
end

function CharTrain:draw()
  self.chars[3]:draw()
  self.chars[2]:draw()
  self.chars[1]:draw()
end

return CharTrain
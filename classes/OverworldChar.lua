local OverworldChar = class('OverworldChar')

function OverworldChar:initialize(p)
  self.pos = vec(p.x, p.y)

  self.idle = p.idle
  self.walk = p.walk
  self.cur_anim = p.idle

  self.facingRight = true
  self.dv = vec(0, 0)
  self.speed = 3

  self.scale = 1.2
  self.facing = 1
  self.w = 72
  self.h = 72
end

function OverworldChar:update(dt)
  self.cur_anim:update(dt)
end

function OverworldChar:draw()
  self.cur_anim:draw(charsheet, self.pos.x, self.pos.y, 0, self.facing * self.scale, self.scale, self.w/2, self.h/2)
end

function OverworldChar:move(dx, dy)
  local dv = vec(dx, dy):normalized()
  self.pos = self.pos + dv * self.speed

  if dv:len() > 0.001 then
    self.cur_anim = self.walk
  else
    self.cur_anim = self.idle
  end

  if dx < 0 then
    self.facingRight = false
    self.facing = -1
  elseif dx > 0 then
    self.facingRight = true
    self.facing = 1
  end
end

function OverworldChar:moveTowards(pos)
  local dir = pos - self.pos
  self:move(dir.x, dir.y)
end

function OverworldChar:beIdle()
  self.cur_anim = self.idle
end

return OverworldChar
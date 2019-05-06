local TalkChar = class('TalkChar')

function TalkChar:initialize(p)
  self.pos = vec(p.x, p.y)

  self.idle = p.idle
  self.atk = p.atk

  self.scale = 1
  self.w = 72
  self.h = 72
end

function TalkChar:update(dt)

end

function TalkChar:draw()
  self.idle:draw(charsheet, self.pos.x, self.pos.y, 0, self.scale, self.scale, self.w/2, self.h/2)
end

function TalkChar:doAtk()

end

return TalkChar
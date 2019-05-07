local TalkChar = class('TalkChar')

function TalkChar:initialize(p)
  self.pos = vec(p.x, p.y)

  self.idle = p.idle

  self.convo = p.convo

  self.scale = 1
  self.w = 72
  self.h = 72
  self.talked = false
end

function TalkChar:update(dt)
  self.idle:update(dt)
end

function TalkChar:draw()
  self.idle:draw(charsheet, self.pos.x, self.pos.y, 0, self.scale, self.scale, self.w/2, self.h/2)
end

function TalkChar:check(player_pos)
  if self.talked == false and self.pos:dist(player_pos) < 100 then
    self.talked = true
    gs.push(states.convo, convos[self.convo])
  end
end

return TalkChar
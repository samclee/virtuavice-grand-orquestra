local TalkChar = class('TalkChar')

function TalkChar:initialize(p)
  self.pos = vec(p.x, p.y)

  self.quad = lg.newQuad(p.sprx, 0, p.w, p.h, charsheet:getWidth(), charsheet:getHeight())

  self.convo = p.convo

  self.scale = p.scale or 1.2
  self.w = p.w
  self.h = p.h
  self.r = p.r or 120
  self.talked = false
end

function TalkChar:draw()
  lg.draw(charsheet, self.quad, self.pos.x, self.pos.y, 0, self.scale, self.scale, self.w/2, self.h/2)
  --[[lg.setColor(1,0,0)
  lg.circle('line',self.pos.x, self.pos.y,self.r)
  lg.setColor(1,1,1)]]
end

function TalkChar:check(player_pos)
  if self.talked == false and self.pos:dist(player_pos) < self.r then
    self.talked = true
    print('Talking to this person initiated convo ' .. self.convo)
    gs.push(states.convo, convos[self.convo])
  end
end

return TalkChar
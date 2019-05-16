local TalkChar = class('TalkChar')

function TalkChar:initialize(p)
  self.pos = vec(p.x, p.y)

  self.idle = p.idle

  self.convo = p.convo

  self.scale = 1.2
  self.w = 72
  self.h = 72
  self.talked = false
end

function TalkChar:draw()
  if self.idle ~= nil then
    self.idle:draw(charsheet, self.pos.x, self.pos.y, 0, self.scale, self.scale, self.w/2, self.h/2)
  end
  --[[lg.setColor(1,0,0)
  lg.circle('line',self.pos.x, self.pos.y,80)
  lg.setColor(1,1,1)]]
end

function TalkChar:check(player_pos)
  if self.talked == false and self.pos:dist(player_pos) < 80 then
    self.talked = true
    print('Talking to this person initiated convo ' .. self.convo)
    gs.push(states.convo, convos[self.convo])
  end
end

return TalkChar
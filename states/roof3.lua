local Roof3 = {}


function Roof3:enter(from)
  s:lookAt(600, 160)
  gs.push(states.convos, convos[8])
end

function Roof3:resume()
  gs.switch(states.credits)
end

function Roof3:draw()
s:scale_on()
  lg.setColor(skyColor)
  lg.rectangle('fill', 0, 0, 800, 600)
  lg.setColor(1,1,1)
s:scale_off()
s:on()
  lg.draw(assets.roof,0,0,0,2.5,2.5)

s:off()
end

return Roof3
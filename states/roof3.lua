local Roof3 = {}

local TeraQuad = lg.newQuad(0,0,72,72,charsheet:getWidth(),72)
local NemeQuad = lg.newQuad(144,0,72,72,charsheet:getWidth(),72)
local FreyaQuad = lg.newQuad(288,0,72,72,charsheet:getWidth(),72)


function Roof3:enter(from)
  s:lookAt(600, 160)
  s:setColorTo({0,0,0,1})
  s:fadeTo({0,0,0,0},2)
  ti.after(3, function () gs.push(states.convo, convos[11]) end)
end

function Roof3:update(dt)
  s:update(dt)
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
  lg.draw(assets.sheets.charsheet, TeraQuad, 600,160, 0,1.2, 1.2, 43,43)
  lg.draw(assets.sheets.charsheet, NemeQuad, 480,140, 0,1.2, 1.2, 43,43)
  lg.draw(assets.sheets.charsheet, FreyaQuad, 500,220, 0,1.2, 1.2, 43,43)
  lg.draw(assets.bossSpr, 800, 159, 0, 1, 1, 150, 150)
s:off()
end

return Roof3
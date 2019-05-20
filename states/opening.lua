local Opening = {}
local vgo_logo = assets.vgo_logo_clear
local gdc_logo = assets.gdc_logo
local imageColor = {0,0,0,0}
local msg = 'Video Game Orchestra presents'
local state = 0

function Opening:enter(from)
  lg.setFont(fonts.dialog)
  state = 0
end

function Opening:update(dt)
  s:update(dt)

  if input:pressed 'action' then
    if state == 0 then
      state = 1
      ti.tween(2, imageColor, {0, 0, 0, 1}, 'linear')
    elseif state == 1 then
      state = 2
      ti.tween(2, imageColor, {0, 0, 0, 0}, 'linear', function() msg = 'in cooperation with Game Dev Club'end)
    elseif state == 2 then
      state = 3
      ti.tween(2, imageColor, {0, 0, 0, 1}, 'linear')
    elseif state == 3 then
      ti.tween(2, imageColor, {0, 0, 0, 0}, 'linear', function() gs.switch(states.opening2)end)
    end
  end
end

function Opening:draw()
  s:on()
  lg.setColor(skyColor)
  lg.rectangle('fill', 0, 0, 800, 600)

  lg.setColor(imageColor)
  lg.printf(msg, 0, 200, 800, 'center')
  

  s:off()
end

return Opening
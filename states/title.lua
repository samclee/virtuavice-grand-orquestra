local Title = {}

function Title:enter(from)
  s:setDraw(true)
  s:setColorTo({1,1,1,1})
  s:fadeTo({1,1,1,0}, 2)
end

function Title:update(dt)
  s:update(dt)

  if input:pressed 'action' then
    gs.switch(states.game)
  end
end

function Title:draw()
  s:on()

  lg.setFont(fonts.big)
  lg.printf('[Press any key to start]',0,400,800,'center')

  
  s:off()
end

return Title
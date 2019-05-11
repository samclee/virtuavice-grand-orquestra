local Battle2 = {}


function Battle2:enter(from)

end

function Battle2:update(dt)
  s:update(dt)
end

function Battle2:draw()
  s:on()
  lg.setColor(skyColor)
  lg.rectangle('fill', 0, 0, 800, 600)

  s:off()
end

return Battle2
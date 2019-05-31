local Credits = {}

local ppl ={
  
}

function Credits:enter(from)
  print('entered credits')
end

function Credits:resume(from)

end

function Credits:update(dt)

end

function Credits:draw()
  s:on()
  lg.print('credits',0,0)

  s:off()
end

return Credits
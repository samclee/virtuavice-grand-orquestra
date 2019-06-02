local Credits = {}

local y = 610
local lerp_started = false
local cr =[[
  Story and Writing
  Grace Willhoite

  Programming
  Sam Lee

  Art
  Angie Ni
  Kristen Shih
  Angie Ta
  Grace Wilhoite

  Music
  Kyle Chuang
  Savita Pereira



  




  Thank you for playing!
]]

function Credits:enter(from)
  print('entered credits')
  lg.setFont(fonts.dialog)
  s:setColorTo({1,1,1,0})
  s:reset()
  print(s._x,s._y)
end

function Credits:update(dt)
  s:update(dt)
  if y > -968 then
    y = y - .5
  end
end

function Credits:draw()
  s:on()
  lg.setColor(1,1,1)
  lg.rectangle('fill',0,0,800,600)

  lg.setColor(0,0,0)
  lg.printf(cr, 100,y,600, 'center')
  s:off()
end

function Credits:keypressed(k)
  --s:fadeTo({1,0,0,0},2)
end

return Credits
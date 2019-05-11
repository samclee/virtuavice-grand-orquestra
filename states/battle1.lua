local Battle1 = {}

local dialog
local box
local choices = {}

function Battle1:enter(from)
  self.from = from
  box = dlog(fonts.dialog, 15, 15, 770, 210, 210)
  dialog = Ero(script)
    :defineAttributes({
      'portrait',
      'name',
      'atk',
      'dmg',
      'wait'
    })

  interpretPkg(dialog:next())
end

function boxSleepFor(n)
  if n == nil then return end

  box.active = false
  ti.after(n, function() box.active = true end)
end

function interpretPkg(pkg)
  choices = pkg.options
  box:setMsg(pkg.msg, choices)
  box:setName(pkg.name)
  box:setPortrait(portraits[pkg.portrait])
  boxSleepFor(pkg.wait)

end

function Battle1:update(dt)
  s:update(dt)

  box:update()
  -- input
  -- cursor movement
  if input:pressed 'left' then
    box:setChoice(1)
  elseif input:pressed 'right' then
    box:setChoice(2)
  end

  -- choice selection
  if input:pressed 'action' then
    local pkg = nil

    if choices ~= nil then
      local choice = choices[box.cur_choice]
      pkg = dialog:select(choice)
    else
      pkg = dialog:next()
    end
    
    if pkg ~= nil then
      interpretPkg(pkg)
    else
      print('switch states')
    end
  end
end

function Battle1:draw()
  s:on()
  lg.setColor(skyColor)
  lg.rectangle('fill', 0, 0, 800, 600)
  box:draw()
  s:off()
end

return Battle1
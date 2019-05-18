local Battle1 = {}

local dialog
local box
local choices = {}

local party = {
  BattleChar:new({x = 100, y = 300, idle = anims.tera_idle, atk = anims.tera_walk, max_hp = 70}),
  BattleChar:new({x = 150, y = 400, idle = anims.neme_idle, atk = anims.neme_walk, max_hp = 50}),
  BattleChar:new({x = 200, y = 500, idle = anims.freya_idle, atk = anims.freya_walk, max_hp = 60})
}

function Battle1:boxSleepFor(n)
  if n == nil then return end

  box.active = false
  ti.after(n, function() box.active = true end)
end

function Battle1:doAtks(atkers)
  if atkers == nil then return end

  for _,i in pairs(atkers) do
    if i < 4 then
      party[i]:doAtk()
    else

    end
  end
end

function Battle1:interpretPkg(pkg)
  choices = pkg.options
  box:setMsg(pkg.msg, choices)
  box:setName(pkg.name)
  box:setPortrait(portraits[pkg.portrait])
  self:boxSleepFor(pkg.wait)
  self:doAtks(pkg.atk)
end

function Battle1:enter(from, convo_num, to)
  self.from = from
  self.to = to
  s:reset()
  s:fadeTo({1,1,1,0},2)
  box = dlog(fonts.dialog, 15, 15, 770, 210, 210)
  dialog = Ero(convos[convo_num])
    :defineAttributes({
      'portrait',
      'name',
      'atk',
      'dmg',
      'wait'
    })

  self:interpretPkg(dialog:next())
end

function Battle1:update(dt)
  s:update(dt)

  for _,c in pairs(party) do
    c:update(dt)
  end

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
      self:interpretPkg(pkg)
    else
      gs.switch(states[self.to])
    end
  end
end

function Battle1:draw()
  s:on()
  lg.setColor(skyColor)
  lg.rectangle('fill', 0, 0, 800, 600)

  lg.setColor(1,1,1)
  for _,c in pairs(party) do
    c:draw()
  end

  box:draw()
  s:off()
end

return Battle1
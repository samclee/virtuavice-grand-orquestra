local Convo = {}

local dialog
local box
local choices = {}

function Convo:interpretPkg(pkg)
  choices = pkg.options
  box:setMsg(pkg.msg, choices)
  box:setName(pkg.name)
  box:setPortrait(portraits[pkg.portrait])
end

function Convo:enter(from, script, retMsg)
  self.from = from
  self.retMsg = retMsg
  box = dlog(fonts.dialog, 15, 15, 770, 210, 210)
  dialog = Ero(script)
    :defineAttributes({
      'portrait',
      'name'
    })
    :addPreset('tera', {
      portrait ='tera1',
      name = 'Tera'
    })
    :addPreset('neme', {
      portrait ='neme1',
      name = 'Neme'
    })
    :addPreset('freya', {
      portrait ='freya1',
      name = 'Freya'
    })
    :addPreset('boss', {
      portrait ='boss1',
      name = 'Demon King'
    })
    :addPreset('geralk', {
      portrait ='boss1',
      name = 'Geralk'
    })

  self:interpretPkg(dialog:next())
end

function Convo:update(dt)
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
      gs.pop(self.retMsg)
    end
  end
end

function Convo:draw() 
  self.from:draw()
  
  s:scale_on()
  box:draw()
  s:scale_off()
end

return Convo
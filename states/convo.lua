local Convo = {}

local dialog
local portraits = {}
portraits.tera1 = assets.portraits.tera1
local choices = {}

function Convo:enter(from, script)
  self.from = from
  box = dlog(fonts.dialog, 15, 15, 770, 210, 210)
  dialog = Ero(script)
    :defineAttributes({
      'portrait',
      'name'
    })

  interpretPkg(dialog:next())
end

function interpretPkg(pkg)
  choices = pkg.options
  box:setMsg(pkg.msg, choices)

  box:setPortrait(portraits[pkg.portrait])
end

function Convo:update(dt)
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
      gs.pop()
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
lg = love.graphics

s = require 'libs.ssss'
shack = require 'libs.shack'
gs = require 'libs.gamestate'
ti = require 'libs.timer'
vec = require 'libs.vector'
Ero = require 'libs.erogodic'()
baton = require 'libs.baton'
class = require 'libs.middleclass'
assets = require('libs.cargo').init('assets')
anim8 = require 'libs.anim8'
dlog = require 'libs.dlog'

convos = require 'assets.convos'
love.graphics.setDefaultFilter('nearest', 'nearest')
skyColor = {178/255, 232/255, 255/255,1}

input = baton.new {
  controls = {
    left = {'key:left', 'key:a', 'axis:leftx-', 'button:dpleft'},
    right = {'key:right', 'key:d', 'axis:leftx+', 'button:dpright'},
    up = {'key:up', 'key:w', 'axis:lefty-', 'button:dpup'},
    down = {'key:down', 'key:s', 'axis:lefty+', 'button:dpdown'},
    action = {'key:z', 'key:space', 'button:a'},
  },
  pairs = {
    move = {'left', 'right', 'up', 'down'}
  },
  joystick = love.joystick.getJoysticks()[1],
}

fonts = {}
portraits = {}
portraits.tera1 = assets.portraits.tera1
portraits.neme1 = assets.portraits.neme1
portraits.freya1 = assets.portraits.freya1

-- animation
anims = {}
charsheet = assets.sheets.charsheet
char_grid = anim8.newGrid(72, 72, charsheet:getWidth(), charsheet:getHeight())
anims.tera_idle = anim8.newAnimation(char_grid(1,1), 1)
anims.tera_walk = anim8.newAnimation(char_grid(1,1, 2,1), 0.2)
anims.neme_idle = anim8.newAnimation(char_grid(3,1), 1)
anims.neme_walk = anim8.newAnimation(char_grid(3,1, 4,1), 0.2)
anims.freya_idle = anim8.newAnimation(char_grid(5,1), 1)
anims.freya_walk = anim8.newAnimation(char_grid(5,1, 6,1), 0.2)

OverworldChar = require 'classes.OverworldChar'
TalkChar = require 'classes.TalkChar'
Chest = require 'classes.Chest'
Portal = require 'classes.Portal'
CharTrain = require 'classes.CharTrain'
BossChar = require 'classes.BossChar'

states = {}
statenames = {'opening', 'title', 'outdoor', 'battle1', 'battle2', 'convo', 'credits', 'opening2', 'indoor', 'roof'}
for _,n in pairs(statenames) do
  states[n] = require ('states.'.. n)
end

function love.load()
  s:init()
  gs.registerEvents()
  fonts.big = assets.v(35)
  fonts.dialog = assets.v(24)
  fonts.name = assets.v(16)
  gs.switch(states.outdoor)
end

function love.update(dt)
  input:update()
  ti.update(dt)
end

function love.keypressed(k)
  if k == 'f' then
    s:toggleFullscreen()
  elseif k == 'escape' then
    love.event.quit()
  end
end

function fadeOut(nextState, t, c)
  t = t or 0.1
  c = c or {1,1,1,1}
  s:setColorTo({1, 1, 1, 0})
  ti.tween(t,s,{_cur_color = c},'linear',function() gs.switch(states[nextState]) end)
end
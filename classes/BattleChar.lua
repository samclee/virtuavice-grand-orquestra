local BattleChar = class('BattleChar')

function BattleChar:initialize(p)
  self.bx = p.x
  self.x = p.x
  self.y = p.y
  self.w = 72
  self.h = 72

  self.idle = p.idle
  self.atk = p.atk
  self.cur_anim = p.idle

  self.hp = p.max_hp
  self.max_hp = p.max_hp
  self.scale = 1.8
end

function BattleChar:update(dt)
  self.cur_anim:update(dt)
end

function BattleChar:draw()
  self.cur_anim:draw(charsheet, self.x, self.y, 0, self.scale, self.scale, self.w/2, self.h/2)

  --[[lg.setColor(1,0,0)
  lg.circle('line',self.x, self.y, 50)
  lg.setColor(1,1,1)]]
end

function BattleChar:take_dmg(d)
  self.hp = self.hp - d
end

function BattleChar:doAtk()
  self.cur_anim = self.atk
  ti.tween(0.5, self, {x = self.bx + 100}, 'in-out-quad', 
    function() ti.tween(0.5, self, {x = self.bx}, 'in-out-quad',
      function()
        self.cur_anim = self.idle
      end) 
  end)
end

return BattleChar
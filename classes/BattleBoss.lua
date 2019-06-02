local BattleBoss = class('BattleBoss')

function BattleBoss:initialize(p)
  self.bx = p.x
  self.x = p.x
  self.y = p.y
  self.w = p.spr:getWidth()
  self.h = p.spr:getHeight()

  self.spr = p.spr

  self.hp = p.max_hp
  self.max_hp = p.max_hp
  self.scale = 1.2
end


function BattleBoss:draw()
  lg.draw(self.spr, self.x, self.y, 0, self.scale, self.scale, self.w/2, self.h/2)
end

function BattleBoss:doAtk()
  ti.tween(0.5, self, {x = self.bx - 100}, 'in-out-quad', 
    function() ti.tween(0.5, self, {x = self.bx}, 'in-out-quad') 
  end)
end

return BattleBoss
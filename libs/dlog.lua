local dlog = {}
local lg = love.graphics

dlog.__index = dlog

dlog.drawBg = function(self) 
	lg.setColor(0,0,.502)
	lg.rectangle('fill',self.x, self.y, self.w, self.h)
  lg.setColor(1,1,1)
end

dlog.drawBorder = function(self)
	lg.setLineWidth(5)
	lg.rectangle('line', self.x, self.y, self.w, self.h)
end

dlog.drawText = function(self)
	lg.setFont(self.font)
  local cur_msg = string.sub(self.msg, 0, self.cur_char)
	lg.printf(cur_msg, self.offset + self.x + self.padding_x, self.y + self.padding_y, self.w - 2 * self.padding_x - self.offset, 'left')
end

dlog.drawChoices = function(self)
  lg.setFont(self.font)
  local m1, m2 = self.choices[1], self.choices[2]
  if self.cur_choice == 1 then
    m1 = '[' .. m1 .. ']'
  else
    m2 = '[' .. m2 .. ']'
  end

  lg.printf(m1, self.offset + self.x + self.padding_x, self.y + 106 + self.padding_y, self.w - 2 * self.padding_x - self.offset, 'left')
  lg.printf(m2, self.offset + self.x + self.padding_x, self.y + 106 + self.padding_y, self.w - 2 * self.padding_x - self.offset, 'right')
end

dlog.drawPortrait = function(self)
  lg.draw(self.portrait, self.x+self.padding_x, self.y+self.padding_y)
  lg.setLineWidth(5)
  lg.rectangle('line', self.x+self.padding_x, self.y+self.padding_y, 180, 180)

  lg.setColor(0,0,0,0.5)
  lg.rectangle('fill', self.x+self.padding_x + 2, self.y+self.padding_y + 140, 176,38)

  lg.setFont(fonts.name)
  lg.setColor(1,1,1)
  lg.print(self.name, self.x+self.padding_x + 6, self.y+self.padding_y + 143)
end

local function new(font, x, y, w, h)
	local d = {
		font = font,
		x = x,
		y = y,
		w = w,
		h = h,
		padding_x = 15,
		padding_y = 15,
    offset = 210,
		
    msg = '',
		active = true,
    portrait = nil,
    cur_choice = 1,
    name = nil,

    msg_len = 0,
    cur_char = 0,

    cur_time = 0
	}
	return setmetatable(d, dlog)
end

function dlog:setMsg(msg, choices)
	self.msg = msg
  self.cur_char = 0
  self.msg_len = string.len(msg)
  self.choices = choices
end

function dlog:setChoice(choice)
  self.cur_choice = choice
end

function dlog:setName(name)
  self.name = name
end

function dlog:setPortrait(img)
  self.portrait = img
end

function dlog:update()
  if not self.active then return end

  self.cur_time = self.cur_time + 1
  if self.cur_time > 2 then
    self.cur_time = 0
    if self.cur_char < self.msg_len then
      self.cur_char = self.cur_char + 1
    end
  end
end

function dlog:draw()
	if not self.active then return end

	self:drawBg()
	self:drawBorder()
  if self.portrait ~= nil then
    self:drawPortrait()
    self.offset = 210
  else
    self.offset = 0
  end

  self:drawText()

  if self.choices ~= nil then
    self:drawChoices()
  end
end

return setmetatable({
	new = new
}, {
	__call = function(_, ...) return new(...) end
})
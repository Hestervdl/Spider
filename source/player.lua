local pd <const> = playdate
local gfx <const> = pd.graphics
import "silk"

class('player').extends(gfx.sprite)

function player:init(x,y)
    local playerImage = gfx.image.new("images/spider")
    self:setImage(playerImage)
    self:moveTo(x,y)
    self:add()
    self.Speed = 3
end

function player:update()
    if pd.buttonIsPressed(pd.kButtonUp) then
        if self.y > 0 then
            self:moveBy(0,-self.Speed)
        end
    elseif pd.buttonIsPressed(pd.kButtonDown) then
        if self.y < 240 then
            self:moveBy(0,self.Speed)
        end
    elseif pd.buttonIsPressed(pd.kButtonRight) then
        if self.x < 360 then
            self:moveBy(self.Speed,0)
        end
    elseif pd.buttonIsPressed(pd.kButtonLeft) then
        if self.x > 0 then
            self:moveBy(-self.Speed,0)
        end
    end

    if pd.buttonJustPressed(pd.kButtonA) then
        silk(self.x, self.y, 5)
    end
end
local pd <const> = playdate
local gfx <const> = pd.graphics

class('silk').extends(gfx.sprite)

function silk:init(x,y,speed)
    local silkSize = 5
    local silkImage = gfx.image.new(silkSize*2, silkSize*2)
    gfx.pushContext(silkImage)
        gfx.drawCircleAtPoint(silkSize, silkSize, silkSize)
    gfx.popContext()
    self:setImage(silkImage)

    self:setCollideRect(0,0,self:getSize())
    self.speed = speed
    self:moveTo(x,y)
    self:add()
end

function silk:update()
    self:moveWithCollisions(self.x+self.speed, self.y)
    
end
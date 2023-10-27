import "CoreLibs/graphics"
import "corelibs/object"
import "CoreLibs/sprites"
import "circle"

local pd <const> = playdate
local gfx <const> = pd.graphics

local function initialize()
    local circleSprite = Circle(200,120,20)
    circleSprite:add()
end

initialize()

function playdate.update() 
    gfx.sprite.update()
end
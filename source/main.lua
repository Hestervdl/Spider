import "CoreLibs/graphics"
import "corelibs/object"
import "CoreLibs/sprites"

local pd <const> = playdate
local gfx <const> = pd.graphics

function playdate.update() 
    gfx.clear()
    gfx.drawText("Hello World", 20, 20)
end
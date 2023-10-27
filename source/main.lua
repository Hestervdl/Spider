import "CoreLibs/graphics"
import "corelibs/object"
import "CoreLibs/sprites"
import "corelibs/timer"
import "player"

local pd <const> = playdate
local gfx <const> = pd.graphics

player(50,120)

function playdate.update() 
    gfx.sprite.update()
    pd.timer.updateTimers()
end
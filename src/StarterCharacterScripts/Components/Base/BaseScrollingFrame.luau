local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage.Packages.Vide)

export type BaseScrollingFrameProps = Vide.vScrollingFrame

local function BaseFrame(props: BaseScrollingFrameProps)
    return Vide.create "ScrollingFrame" {
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
        CanvasSize = UDim2.fromScale(0, 0),
        ScrollBarThickness = 8,
        props
    }
end

return BaseFrame

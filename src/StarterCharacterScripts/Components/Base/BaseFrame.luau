local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage.Packages.Vide)

export type BaseFrameProps = Vide.vFrame

local function BaseFrame(props: BaseFrameProps)
    return Vide.create "Frame" {
        BackgroundColor3 = Color3.fromRGB(55, 55, 55),
        Size = UDim2.fromScale(1, 1),
        Position = UDim2.fromScale(0, 0),
        props
    }
end

return BaseFrame

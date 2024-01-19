local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage.Packages.Vide)

export type BaseImageLabelProps = Vide.vImageLabel

local function BaseImageLabel(props: BaseImageLabelProps)
    return Vide.create "ImageLabel" {
        BackgroundColor3 = Color3.fromRGB(55, 55, 55),
        BackgroundTransparency = 1,
        Size = UDim2.fromScale(1, 1),
        props
    }
end

return BaseImageLabel

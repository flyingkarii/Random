local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage.Packages.Vide)

export type BaseImageButtonProps = Vide.vImageButton

local function BaseImageButton(props: BaseImageButtonProps)
    return Vide.create "ImageButton" {
        BackgroundColor3 = Color3.fromRGB(55, 55, 55),
        BackgroundTransparency = 1,
        Size = UDim2.fromScale(1, 1),
        props
    }
end

return BaseImageButton

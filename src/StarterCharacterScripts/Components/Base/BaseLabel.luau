local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage.Packages.Vide)

export type BaseLabelProps = Vide.vTextLabel

local function BaseLabel(props: BaseLabelProps)
    return Vide.create "TextLabel" {
        BackgroundColor3 = Color3.fromRGB(55, 55, 55),
        TextSize = 18,
        TextColor3 = Color3.new(1, 1, 1),
        FontFace = Font.new("rbxasset://fonts/families/ComicNeueAngular.json"),
        Size = UDim2.fromScale(1, 1),
        props
    }
end

return BaseLabel

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage.Packages.Vide)

export type BaseButtonProps = Vide.vTextButton

local function BaseButton(props: BaseButtonProps)
    return Vide.create "TextButton" {
        BackgroundColor3 = Color3.fromRGB(55, 55, 55),
        TextSize = 18,
        TextColor3 = Color3.new(1, 1, 1),
        FontFace = Font.new("rbxasset://fonts/families/ComicNeueAngular.json"),
        Size = UDim2.fromScale(1, 1),
        props
    }
end

return BaseButton

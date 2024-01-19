local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage.Packages.Vide)

export type BaseLabelProps = { 
    AnchorPoint: Vector2?, 
    BackgroundColor3: Color3?, 
    BackgroundTransparency: number?,
    Text: string?,
    TextSize: Enum.FontSize?,
    TextScaled: boolean?,
    TextColor3: Color3?,
    TextTransparency: number?,
    TextWrapped: boolean?,
    FontFace: Font?,
    Name: string?, 
    Position: UDim2?, 
    Size: UDim2?
}

local function BaseLabel(props: BaseLabelProps)
    return Vide.create "TextLabel" {
        Name = "TextLabel",
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.fromRGB(55, 55, 55),
        BackgroundTransparency = 0,
        Text = "Placeholder",
        TextSize = Enum.FontSize.Size18,
        TextScaled = false,
        TextColor3 = Color3.new(1, 1, 1),
        TextTransparency = 0,
        TextWrapped = false,
        FontFace = Font.new("rbxasset://fonts/families/ComicNeueAngular.json"),
        Size = UDim2.fromScale(1, 1),
        Position = UDim2.fromScale(0, 0),
        props
    }
end

return BaseLabel

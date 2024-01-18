local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Fusion = require(ReplicatedStorage.Packages.Fusion)
local FusionTypes = require(ReplicatedStorage.Packages._Index["elttob_fusion@0.2.0"].fusion.PubTypes)
local New, Children = Fusion.New, Fusion.Children

export type BaseButtonProps = { 
    [FusionTypes.SpecialKey]: any?, 
    AnchorPoint: Vector2?, 
    AutoButtonColor: boolean?,
    BackgroundColor3: Color3?, 
    BackgroundTransparency: number?,
    Text: string?,
    TextSize: Enum.FontSize?,
    TextScaled: boolean?,
    TextColor3: Color3?,
    TextTransparency: number?,
    FontFace: Font?,
    Name: string?, 
    Position: UDim2?, 
    Size: UDim2?
}

local function BaseButton(props: BaseButtonProps)
    return New "TextButton" {
        Name = props.Name or "TextButton",
        AutoButtonColor = props.AutoButtonColor or false,
        AnchorPoint = props.AnchorPoint or Vector2.new(0, 0),
        BackgroundColor3 = props.BackgroundColor3 or Color3.fromRGB(31, 31, 31),
        BackgroundTransparency = props.BackgroundTransparency or 0,
        Text = props.Text or "Placeholder",
        TextSize = props.TextSize or 18,
        TextScaled = props.TextScaled or false,
        TextColor3 = props.TextColor3 or Color3.new(1, 1, 1),
        TextTransparency = props.TextTransparency or 0,
        FontFace = props.FontFace or Font.new("rbxasset://fonts/families/ComicNeueAngular.json"),
        Size = props.Size or UDim2.fromScale(1, 1),
        Position = props.Position or UDim2.fromScale(0, 0),

        [Children] = props[Children] or {}
    }
end

return BaseButton

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Fusion = require(ReplicatedStorage.Packages.Fusion)
local FusionTypes = require(ReplicatedStorage.Packages._Index["elttob_fusion@0.2.0"].fusion.PubTypes)
local New, Children = Fusion.New, Fusion.Children

export type BaseImageButtonProps = {
    [FusionTypes.SpecialKey]: any?, 
    AnchorPoint: Vector2?, 
    BackgroundColor3: Color3?, 
    BackgroundTransparency: number?, 
    FontFace: Font?, 
    ImageColor3: Color3?, 
    ImageTransparency: number?, 
    Name: string?, 
    Position: UDim2?, 
    Size: UDim2?, 
    Text: string?, 
    TextColor3: Color3?, 
    TextScaled: boolean?, 
    TextSize: Enum.FontSize?, 
    TextTransparency: number?, 
    TextWrapped: boolean? 
}

local function BaseImageButton(props: BaseImageButtonProps)
    return New "TextButton" {
        Name = props.Name or "TextButton",
        AnchorPoint = props.AnchorPoint or Vector2.new(0, 0),
        BackgroundColor3 = props.BackgroundColor3 or Color3.fromRGB(31, 31, 31),
        BackgroundTransparency = props.BackgroundTransparency or 1,
        Text = props.Text or "Placeholder",
        TextSize = props.TextSize or 18,
        TextScaled = props.TextScaled or false,
        TextColor3 = props.TextColor3 or Color3.new(1, 1, 1),
        TextTransparency = props.TextTransparency or 0,
        ImageColor3 = props.ImageColor3 or Color3.new(1, 1, 1),
        ImageTransparency = props.ImageTransparency or 0,
        FontFace = props.FontFace or Font.new("rbxasset://fonts/families/ComicNeueAngular.json"),
        Size = props.Size or UDim2.fromScale(1, 1),
        Position = props.Position or UDim2.fromScale(0, 0),

        [Children] = props[Children] or {}
    }
end

return BaseImageButton

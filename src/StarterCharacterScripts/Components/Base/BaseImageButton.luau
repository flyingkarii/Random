local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage.Packages.Vide)

export type BaseImageButtonProps = {
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
    return Vide.create "TextButton" {
        Name = props.Name,
        AnchorPoint = props.AnchorPoint,
        BackgroundColor3 = props.BackgroundColor3,
        BackgroundTransparency = props.BackgroundTransparency,
        Text = props.Text,
        TextSize = props.TextSize,
        TextScaled = props.TextScaled,
        TextColor3 = props.TextColor3,
        TextTransparency = props.TextTransparency,
        ImageColor3 = props.ImageColor3,
        ImageTransparency = props.ImageTransparency,
        FontFace = props.FontFace,
        Size = props.Size,
        Position = props.Position,
        props
    }
end

return BaseImageButton

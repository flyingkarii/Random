local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage.Packages.Vide)

export type BaseFrameProps = { 
    AnchorPoint: Vector2?, 
    BackgroundColor3: Color3?, 
    Name: string?, 
    Position: UDim2?, 
    Size: UDim2?
}

local function BaseFrame(props: BaseFrameProps)
    return Vide.create "Frame" {
        Name = props.Name,
        AnchorPoint = props.AnchorPoint,
        BackgroundColor3 = props.BackgroundColor3,
        Size = props.Size,
        Position = props.Position,
        props
    }
end

return BaseFrame

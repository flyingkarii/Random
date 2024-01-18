local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Fusion = require(ReplicatedStorage.Packages.Fusion)
local FusionTypes = require(ReplicatedStorage.Packages._Index["elttob_fusion@0.2.0"].fusion.PubTypes)
local New, Children = Fusion.New, Fusion.Children

export type BasicFrameProps = { 
    [FusionTypes.SpecialKey]: any?, 
    AnchorPoint: Vector2?, 
    BackgroundColor3: Color3?, 
    Name: string?, 
    Position: UDim2?, 
    Size: UDim2?
}

local function BaseFrame(props: BasicFrameProps)
    return New "Frame" {
        Name = props.Name or "Frame",
        AnchorPoint = props.AnchorPoint or Vector2.new(0, 0),
        BackgroundColor3 = props.BackgroundColor3 or Color3.fromRGB(55, 55, 55),
        Size = props.Size or UDim2.fromScale(1, 1),
        Position = props.Position or UDim2.fromScale(0, 0),

        [Children] = props[Children] or {}
    }
end

return BaseFrame

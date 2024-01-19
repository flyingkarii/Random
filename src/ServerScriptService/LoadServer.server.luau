local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Loader = require(ReplicatedStorage.Shared.Loader)

Loader:LoadModules(script.Parent.Modules, true)

local module
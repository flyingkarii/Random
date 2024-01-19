local Loader = {}
local priorities: {[string]: number} = {}

function Loader:LoadModules(parent: Instance, deep: boolean)
    local loadQueue: {ModuleScript} = {}
    local children: {Instance} = if deep then parent:GetDescendants() else parent:GetChildren()

    for _, child: Instance in children do
        if not child:IsA("ModuleScript") then
            continue
        end

        local priorityStr: string? = child.Name:match("%d+")

        if priorityStr and tonumber(priorityStr) then
            priorities[child.Name] = tonumber(priorityStr) :: number
        else
            priorities[child.Name] = 100
        end

        table.insert(loadQueue, child :: ModuleScript)
    end

    table.sort(loadQueue, function(a: ModuleScript, b: ModuleScript)
        local aPriority: number = priorities[a.Name]
        local bPriority: number = priorities[b.Name]

        return aPriority < bPriority
    end)

    for _, moduleInstance: ModuleScript in loadQueue do
        local module = require(moduleInstance) :: any

        if module.Start then
            task.spawn(module.Start, module)
        end
    end
end

return Loader
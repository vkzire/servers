local Players = game:GetService("Players")

whitelisted = {
    "uz0ci",
    "vkzire"
}

local checked = 0
local ids = {}
for i, v in pairs(whitelisted) do
    task.spawn(function()
        table.insert(ids, Players:GetUserIdFromNameAsync(v))
        checked +=1
    end)
end

repeat wait() until checked == #whitelisted
return ids

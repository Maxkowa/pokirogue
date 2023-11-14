local Unlocker, Caffeine, Project = ...

local spells = Project.Spells

local Module = Caffeine.Module:New("rogue")

local player            = Caffeine.UnitManager:Get('player')
local target            = Caffeine.UnitManager:Get('target')
local none              = Caffeine.UnitManager:Get('none')
local pet               = Caffeine.UnitManager:Get('pet')

local CombatAPL     = Caffeine.APL:New("combat")
local RestingAPL    = Caffeine.APL:New("resting")


Project.Settings = Caffeine.Interface.Category:New("xPoki")

local PokilockMenu = Caffeine.Interface.Hotbar:New({
    name = "xPoki",
    options = Project.Settings,
    buttonCount = 2,
})

PokilockMenu:AddButton({
    name = "Toggle",
    texture = "Interface\\ICONS\\ability_dualwield",
    tooltip = "Toggle Pokirogue",
    toggle = true,
    onClick = function()
        local module = Caffeine:FindModule("rogue")
        if module then
            module:Toggle()
            if module.enabled then
                Caffeine:Print("Enabled", module.name)
            else
                Caffeine:Print("Disabled", module.name)
            end
        else
            Caffeine:Print("Module not found")
        end
    end,
})

CombatAPL:AddSpell(
    spells.sinister_strike:CastableIf(function(self)
        return self:IsKnownAndUsable() 
    end):SetTarget(target)
)

Module:Sync(function()
    if player:IsMounted() then 
        return 
    end
    if not player:IsAffectingCombat() then
        RestingAPL:Execute()
    elseif not player:IsCastingOrChanneling() and target:Exists() and target:IsHostile() and not target:IsDead() and player:IsAffectingCombat() then
        CombatAPL:Execute()
    end
end)

Caffeine:Register(Module)
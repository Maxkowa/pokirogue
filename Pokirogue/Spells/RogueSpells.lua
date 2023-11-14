local Unlocker, Caffeine, Project = ...

local SpellBook = Caffeine.Globals.SpellBook

print("I'm in the real spellbook!")

Project.Spells = {

    attack = SpellBook:GetSpell(6603),
    dual_wield = SpellBook:GetSpell(674),
    perception = SpellBook:GetSpell(20600),
    pick_lock = SpellBook:GetSpell(1804),
    throw = SpellBook:GetSpell(2764),
    ambush = SpellBook:GetSpell(8676),
    eviscerate = SpellBook:GetSpell(6762, 6761, 6760, 2098),
    expose_armor = SpellBook:GetSpell(8647),
    garrote = SpellBook:GetSpell(8631, 703),
    rupture = SpellBook:GetSpell(1943),
    slice_and_dice = SpellBook:GetSpell(5171),
    backstab = SpellBook:GetSpell(2590, 53),
    evasion = SpellBook:GetSpell(5277),
    feint = SpellBook:GetSpell(1966),
    gouge = SpellBook:GetSpell(1777),
    kick = SpellBook:GetSpell(1766),
    riposte = SpellBook:GetSpell(14251),
    sinister_strike = SpellBook:GetSpell(1759),
    sprint = SpellBook:GetSpell(2983),
    detect_traps = SpellBook:GetSpell(2836),
    distract = SpellBook:GetSpell(1725),
    pick_pocket = SpellBook:GetSpell(921),
    sap = SpellBook:GetSpell(6770),
    stealth = SpellBook:GetSpell(1785),
    vanish = SpellBook:GetSpell(1856),
}


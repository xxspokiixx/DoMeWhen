local DMW = DMW
local Mage = DMW.Rotations.MAGE
local Player, Buff, Debuff, Spell, Target, Pet, GCD, Pet5Y, Pet5YC, HUD, Player40Y, Player40YC
local UI = DMW.UI
local Rotation = DMW.Helpers.Rotation

local function CreateSettings()
    if not UI.HUD.Options then

    end
end

local function Locals()
    Player = DMW.Player
    Buff = Player.Buffs
    Debuff = Player.Debuffs
    Spell = Player.Spells
    Target = Player.Target or false
    Pet = Player.Pet or false
    GCD = Player:GCD()
    HUD = DMW.Settings.profile.HUD
end

local function CDs()
    -- actions.cds=potion,if=prev_off_gcd.icy_veins|fight_remains<30
    -- actions.cds+=/deathborne
    -- actions.cds+=/mirrors_of_torment,if=active_enemies<3&(conduit.siphoned_malice|soulbind.wasteland_propriety)
    -- actions.cds+=/rune_of_power,if=cooldown.icy_veins.remains>12&buff.rune_of_power.down
    -- actions.cds+=/icy_veins,if=buff.rune_of_power.down
    -- actions.cds+=/time_warp,if=runeforge.temporal_warp&buff.exhaustion.up&(prev_off_gcd.icy_veins|fight_remains<30)
    -- actions.cds+=/use_items
    -- actions.cds+=/blood_fury
    -- actions.cds+=/berserking
    -- actions.cds+=/lights_judgment
    -- actions.cds+=/fireblood
    -- actions.cds+=/ancestral_call
    -- actions.cds+=/bag_of_tricks
end

local function Movement()
    -- actions.movement=blink_any,if=movement.distance>10
    -- actions.movement+=/ice_floes,if=buff.ice_floes.down
    -- actions.movement+=/arcane_explosion,if=mana.pct>30&active_enemies>=2
    -- actions.movement+=/fire_blast
    -- actions.movement+=/ice_lance
end

local function AoE()
    -- actions.aoe=frozen_orb
    -- actions.aoe+=/blizzard
    -- actions.aoe+=/flurry,if=(remaining_winters_chill=0|debuff.winters_chill.down)&(prev_gcd.1.ebonbolt|buff.brain_freeze.react&buff.fingers_of_frost.react=0)
    -- actions.aoe+=/ice_nova
    -- actions.aoe+=/comet_storm
    -- actions.aoe+=/ice_lance,if=buff.fingers_of_frost.react|debuff.frozen.remains>travel_time|remaining_winters_chill&debuff.winters_chill.remains>travel_time
    -- actions.aoe+=/radiant_spark
    -- actions.aoe+=/mirrors_of_torment
    -- actions.aoe+=/shifting_power
    -- actions.aoe+=/fire_blast,if=runeforge.disciplinary_command&cooldown.buff_disciplinary_command.ready&buff.disciplinary_command_fire.down
    -- actions.aoe+=/arcane_explosion,if=mana.pct>30&active_enemies>=6
    -- actions.aoe+=/ebonbolt
    -- actions.aoe+=/ice_lance,if=runeforge.glacial_fragments&talent.splitting_ice&travel_time<ground_aoe.blizzard.remains
    -- actions.aoe+=/wait,sec=0.1,if=runeforge.glacial_fragments&talent.splitting_ice
    -- actions.aoe+=/frostbolt
end

local function SingleTarget()
    -- actions.st=flurry,if=(remaining_winters_chill=0|debuff.winters_chill.down)&(prev_gcd.1.ebonbolt|buff.brain_freeze.react&(prev_gcd.1.glacial_spike|prev_gcd.1.frostbolt&(!conduit.ire_of_the_ascended|cooldown.radiant_spark.remains|runeforge.freezing_winds)|prev_gcd.1.radiant_spark|buff.fingers_of_frost.react=0&(debuff.mirrors_of_torment.up|buff.freezing_winds.up|buff.expanded_potential.react)))
    -- actions.st+=/frozen_orb
    -- actions.st+=/blizzard,if=buff.freezing_rain.up|active_enemies>=2
    -- actions.st+=/ray_of_frost,if=remaining_winters_chill=1&debuff.winters_chill.remains
    -- actions.st+=/glacial_spike,if=remaining_winters_chill&debuff.winters_chill.remains>cast_time+travel_time
    -- actions.st+=/ice_lance,if=remaining_winters_chill&remaining_winters_chill>buff.fingers_of_frost.react&debuff.winters_chill.remains>travel_time
    -- actions.st+=/comet_storm
    -- actions.st+=/ice_nova
    -- actions.st+=/radiant_spark,if=buff.freezing_winds.up&active_enemies=1
    -- actions.st+=/ice_lance,if=buff.fingers_of_frost.react|debuff.frozen.remains>travel_time
    -- actions.st+=/ebonbolt
    -- actions.st+=/radiant_spark,if=(!runeforge.freezing_winds|active_enemies>=2)&buff.brain_freeze.react
    -- actions.st+=/mirrors_of_torment
    -- actions.st+=/shifting_power,if=buff.rune_of_power.down&(soulbind.grove_invigoration|soulbind.field_of_blossoms|active_enemies>=2)
    -- actions.st+=/arcane_explosion,if=runeforge.disciplinary_command&cooldown.buff_disciplinary_command.ready&buff.disciplinary_command_arcane.down
    -- actions.st+=/fire_blast,if=runeforge.disciplinary_command&cooldown.buff_disciplinary_command.ready&buff.disciplinary_command_fire.down
    -- actions.st+=/glacial_spike,if=buff.brain_freeze.react
    -- actions.st+=/frostbolt
end

local function PetStuff()

end

local function Interrupt()

end

local function RunRotation()

    if not IsCurrentSpell(6603) then
        StartAttack(Target.Pointer)
    end
    if Pet and not Pet.Dead and not UnitIsUnit("pettarget", Target.Pointer) then
        PetAttack()
    end
    Pet5YC = 0
    if Pet then
        Pet5Y, Pet5YC = Pet:GetEnemies(5)
    end
    if Interrupt() then
        return true
    end
    --actions+=/call_action_list,name=cds
    if Player:CDs() and CDs() then
        return true
    end
    --actions+=/call_action_list,name=st,if=active_enemies<3
    if AoE() then
        return true
    end
    --actions+=/call_action_list,name=aoe,if=active_enemies>=3
    if SingleTarget() then
        return true
    end
    --actions+=/call_action_list,name=movement
    if Movement() then
        return true
    end
end

function Mage.Frost()
    Locals()
    CreateSettings()
    if Rotation.Active() then
        if PetStuff() then
            return true
        end
        Player:AutoTarget(40)
        if Target and Target.ValidEnemy then
            RunRotation()
        end
    end
end

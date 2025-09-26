--------------------------------------------------------------------------------
-- File: H_Config.lua
--
-- Project: YtuAI
--
-- Description:
--     This is the main configuration file for the Homunculus AI. It allows the
--     user to customize a wide range of behaviors, from basic combat settings
--     to the advanced custom features.
--
-- Note:
--     This file is loaded by `AI.lua` and its values override the defaults
--     set in `Defaults.lua`. All user-facing configuration options should be
--     defined here.
--
-- Custom Options Added:
--   - V_CapriceMobMin, V_SkillSPMin: For the Smart-Casting System.
--   - K_ReactiveKiteHP, K_StuckDetection: For the Dynamic Kiting System.
--   - EnableSuicideTactic, SuicideTimer: For the Economic Suicide Tactic.
--------------------------------------------------------------------------------

-- Last updated: 2025-09-26

--------------------------------
--Basic Settings--
--------------------------------
-- AggroHP                  = 0    -- above certain hp % the homunculus will attack. 0 = disabled
-- AggroSP                  = 0
OldHomunType             = 2
UseSkillOnly             = 0 
UseAttackSkill           = 1
OpportunisticTargeting   = 1
DoNotChase               = 0
UseDanceAttack           = 0    -- is it needed now that we have the dinamic kiting logic?
SuperPassive             = 0
UseIdleWalk              = 0
IdleWalkSP               = 20
UseCastleRoute           = 0
RelativeRoute            = 1
UseCastleDefend          = 0
CastleDefendThreshold    = 4
IdleWalkDistance         = 3
--------------------------------

--------------------------------
--Flee and Rescue Settings--
--------------------------------
FleeHP                   = 20    -- Amount of HP to flee at
RescueOwnerLowHP         = 40    -- Amount of HP to rescue owner at
LiveMobID                = 0     -- ID of the mob to live


--------------------------------
--SP Management--
--------------------------------

-- The minimum number of monsters that must be grouped together for the AI to use Caprice.
-- do we need it if we have a tier logic now?
V_CapriceMobMin          = 2  

-- The minimum SP percentage required to use any skill.
-- Set to 0 to disable.
-- Default: 20
V_SkillSPMin             = 20

-- The SP percentage the homunculus must recover to before using skills again
-- after falling below V_SkillSPMin. This prevents toggling between skills and melee.
-- Should be higher than V_SkillSPMin.
-- Default: 40
V_SkillSPRecover         = 40

-- is this being used at all?
-- AttackSkillReserveSP     = 400 
--------------------------------

--------------------------------
--Auto-Mob and Auto-Combo Settings--
--------------------------------
AutoMobMode             = 2 
AutoMobCount            = 1
AutoComboMode           = 0
AutoComboSkill          = 0
AutoComboSpheres        = 10
--------------------------------

--------------------------------
--Homunculus S Skills--
--------------------------------
UseHomunSSkillChase     = 0
UseHomunSSkillAttack    = 1 
-- AutoSkillDelay          = 200 -- if we have a smart-casting system, we can remove this
AoEMaximizeTargets      = 0
CastTimeRatio           = .80
--------------------------------

--------------------------------
--Eira Skills--
--------------------------------
UseEiraSilentBreeze     = 0
EiraSilentBreezeLevel   = 5 
UseBayeriStahlHorn      = 1
--------------------------------

--------------------------------
--Bayeri Skills--
--------------------------------
BayeriStahlHornLevel    = 5
UseBayeriHailegeStar    = 1
BayeriHailegeStarLevel  = 5
--------------------------------

--------------------------------
--Sera Skills--
--------------------------------
UseSeraParalyze         = 0
SeraParalyzeLevel       = 5
UseSeraPoisonMist       = 0 
SeraPoisonMistLevel     = 5
--------------------------------

--------------------------------
--Eleanor Skills--
--------------------------------
UseEleanorSonicClaw     = 1
EleanorSonicClawLevel   = 5
EleanorSilverveinLevel  = 5
EleanorMidnightLevel    = 5
--------------------------------

--------------------------------
--Dieter Skills--
--------------------------------
UseDieterLavaSlide      = 1 
UseDieterVolcanicAsh    = 1
DieterLavaSlideLevel    = 10
--------------------------------

--------------------------------
--Buffs--
--------------------------------
UseDefensiveBuff        = 3
UseOffensiveBuff        = 0 
UseProvokeOwner         = 0
ProvokeOwnerMobbed      = 3
LifEscapeLevel          = 5
FilirFlitLevel          = 1
FilirAccelLevel         = 1
AmiBulwarkLevel         = 5
UseBayeriAngriffModus   = 0
UseBayeriGoldenPherze   = 0
UseDieterMagmaFlow      = 0
UseDieterGraniticArmor  = 0
UseDieterPyroclastic    = 0
DieterPyroclasticLevel  = 10
UseEiraOveredBoost      = 0
--------------------------------

--------------------------------
--Healing--
--------------------------------
HealSelfHP              = 50   -- In case of vanilmirth, it could use Chaotic Blessing
HealOwnerHP             = 50 
UseAutoHeal             = 0 
--------------------------------

--------------------------------
--Movement & Positioning--
--------------------------------
FollowStayBack          = 2
StationaryAggroDist     = 12
MobileAggroDist         = 12
StationaryMoveBounds    = 12
MobileMoveBounds        = 12
DoNotUseRest            = 1  -- what is the rest state?
RestXOff                = 2
RestYOff                = 0	
MoveSticky              = 0
MoveStickyFight         = 0
--------------------------------

--------------------------------
--Kiting--
--------------------------------
-- Does this work with our kiting logic? Where is this kiting logic?
-- If we have a dynamic kiting system now, do we still need this?
KiteMonsters            = 0
KiteBounds              = 8 
KiteStep                = 5
KiteParanoidStep        = 2
KiteThreshold           = 3
KiteParanoidThreshold   = 2
KiteParanoid            = 0 
--------------------------------

----------------------------------------------------
-- Dynamic Kiting System Settings
----------------------------------------------------

-- The HP percentage at which the homunculus will automatically start kiting to save itself,
-- even if kiting is not normally enabled for the monster.
-- Set to 0 to disable.
-- Default: 50
K_ReactiveKiteHP         = 40

-- A switch to turn the "stuck" detection logic on or off.
-- When enabled, the AI will attempt to move in a different direction if it gets stuck on an obstacle while kiting.
-- 1 = on, 0 = off
-- Default: 1
K_StuckDetection         = 1

-- The HP percentage at which the homunculus will stop fleeing/recovering and resume normal combat.
-- This should be higher than FleeHP.
-- Default: 30
RecoverHP                = 50 
----------------------------------------------------

----------------------------------------------------
-- Economic Suicide Tactic
----------------------------------------------------
-- This feature is designed to save zeny by having the homunculus
-- intentionally get defeated before its 30-minute lifespan expires,
-- avoiding the need to use a costly "Seed of Life".

-- Enable or disable the suicide tactic.
-- 1 = on, 0 = off
-- Default: 0
EnableSuicideTactic      = 1

-- The time in minutes after which the suicide tactic should be activated.
-- This should be set to just under 30 minutes.
-- Default: 28
SuicideTimer             = 1   -- return to 20 when done fixing
----------------------------------------------------

----------------------------------------------------
-- Miscellaneous
----------------------------------------------------
DefendStandby            = 1 
StickyStandby            = 0 
SpawnDelay               = 500
AutoSkillDelay           = 200  -- Fixed delay added to skill casting. Different from the cooldown system.
StandbyFriending         = 1  
MirAIFriending           = 0  
UseAvoid                 = 0  -- does this work with H_Avoid.lua?
TankMonsterLimit         = 20
LavaSlideMode            = 0  -- where is the logic for this? what is 0 what is 1?
PoisonMistMode           = 1  -- where is the logic for this? what is 0 what is 1?
AoEReserveSP             = 0

ChaseSPPause             = 0
ChaseSPPauseSP 			 = -60  -- why is this to -60? where is the logic?
ChaseSPPauseTime         = 2000
AttackTimeLimit          = 20000  -- where is the logic for this?

UseBayeriSteinWand       = 0
BayeriSteinWandLevel     = 5
UseSteinWandSelfMob      = 2
UseSteinWandOwnerMob     = 2
UseSteinWandTele         = 0 
StienWandTelePause       = 3000

AssumeHomun              = 0
AttackLastFullSP         = 0
DanceMinSP               = 0
AutoSkillLimit           = 100
UseAutoPushback          = 0
AutoPushbackThreshold    = 2
AoEFixedLevel            = 1
UseSeraCallLegion        = 1
SeraCallLegionLevel      = 5

ForceKite                = 0  -- not documented.

UseBerserkMobbed         = 1
UseBerserkSkill          = 1
UseBerserkAttack         = 0
Berserk_SkillAlways      = 1
Berserk_Dance            = 0
Berserk_IgnoreMinSP      = 0
Berserk_ComboAlways      = 0

PVPmode                  = 0

UseSeraPainkiller        = 0

DefensiveBuffOwnerMobbed = 0

PainkillerFriends        = 0
PainkillerFriendsSave    = 0

EleanorDoNotSwitchMode   = 0

LastSavedDate            = "16/07/2025 23:49:07"

UseEiraXenoSlasher       = 0
EiraXenoSlasherLevel     = 0
UseEiraEraseCutter       = 0
EiraEraseCutterLevel     = 0

LagReduction             = 0

HealOwnerBreeze          = 0
SteinWandTelePause       = 0

DoNotAttackMoving        = 0
UseSmartBulwark          = 1
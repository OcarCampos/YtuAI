# AI-Dieter Configuration (`H_Config.lua`)

This file contains all the settings to configure your homunculus's behavior. Below is a detailed explanation of each option.

## Basic Settings

-   **`OldHomunType`**: The type of the homunculus before it becomes a Homunculus S. This is used for some legacy skill checks.
-   **`UseSkillOnly`**: If set to `1`, the homunculus will only use skills and never basic attacks. `UseAttackSkill` must also be `1`.
-   **`UseAttackSkill`**: If set to `1`, the homunculus will use skills in combat.
-   **`OpportunisticTargeting`**: If set to `1`, the homunculus will switch to a higher-priority target if one appears while it is already fighting.
-   **`DoNotChase`**: If set to `1`, the homunculus will not chase after monsters.
-   **`UseDanceAttack`**: If set to `1`, the homunculus will move back and forth while attacking to avoid damage.
-   **`SuperPassive`**: If set to `1`, the homunculus will never attack unless explicitly commanded to.
-   **`UseIdleWalk`**: Controls the homunculus's movement when idle. Different values produce different patterns (orbit, cross, rectangle, etc.).
-   **`IdleWalkSP`**: The minimum SP percentage required for the homunculus to perform its idle walk pattern.

## Flee and Rescue Settings

-   **`FleeHP`**: The HP percentage at which the homunculus will stop fighting and try to flee.
-   **`RescueOwnerLowHP`**: The owner's HP percentage at which the homunculus will prioritize attacking monsters that are attacking the owner.

This is a starting point for the documentation. I will continue to add more sections to this file and create the other documentation files as we proceed.

## Auto-Mob and Auto-Combo Settings

-   **`AutoMobMode`**: Controls how the homunculus mobs monsters. `0` disables it, `1` mobs for the owner, and `2` mobs for itself.
-   **`AutoMobCount`**: The number of monsters that need to be present before the homunculus starts mobbing.
-   **`AutoComboMode`**: If set to `1`, enables the use of combo skills.
-   **`AutoComboSkill`**: The ID of the skill to use in a combo.
-   **`AutoComboSpheres`**: The number of spirit spheres required to perform the combo.

## Homunculus S Skills

This section controls the usage of skills specific to Homunculus S types.

-   **`UseHomunSSkillChase`**: If set to `1`, the homunculus can use its special skill while chasing.
-   **`UseHomunSSkillAttack`**: If set to `1`, the homunculus can use its special skill while attacking.
-   **`AutoSkillDelay`**: Fixed delay in milliseconds added to skill casting. This is separate from the cooldown system.
-   **`AoEMaximizeTargets`**: If set to `1`, the homunculus will try to position itself to hit the maximum number of targets with its AoE skills.
-   **`CastTimeRatio`**: A multiplier for skill cast times. Can be used to adjust for cast time reductions.

### Eira

-   **`UseEiraSilentBreeze`**: If set to `1`, Eira will use Silent Breeze.
-   **`EiraSilentBreezeLevel`**: The level of Silent Breeze to use.
-   **`UseEiraXenoSlasher`**: If set to `1`, Eira will use Xeno Slasher.
-   **`EiraXenoSlasherLevel`**: The level of Xeno Slasher to use.
-   **`UseEiraEraseCutter`**: If set to `1`, Eira will use Erase Cutter.
-   **`EiraEraseCutterLevel`**: The level of Erase Cutter to use.

### Bayeri

-   **`UseBayeriStahlHorn`**: If set to `1`, Bayeri will use Stahl Horn.
-   **`BayeriStahlHornLevel`**: The level of Stahl Horn to use.
-   **`UseBayeriHailegeStar`**: If set to `1`, Bayeri will use Hailege Star.
-   **`BayeriHailegeStarLevel`**: The level of Hailege Star to use.

### Sera

-   **`UseSeraParalyze`**: If set to `1`, Sera will use Paralyze.
-   **`SeraParalyzeLevel`**: The level of Paralyze to use.
-   **`UseSeraPoisonMist`**: If set to `1`, Sera will use Poison Mist.
-   **`SeraPoisonMistLevel`**: The level of Poison Mist to use.

### Eleanor

-   **`UseEleanorSonicClaw`**: If set to `1`, Eleanor will use Sonic Claw.
-   **`EleanorSonicClawLevel`**: The level of Sonic Claw to use.
-   **`EleanorSilverveinLevel`**: The level of Silvervein Rush to use.
-   **`EleanorMidnightLevel`**: The level of Midnight Frenzy to use.

### Dieter

-   **`UseDieterLavaSlide`**: If set to `1` Dieter will use Lava Slide.
-   **`UseDieterVolcanicAsh`**: If set to `1`, Dieter will use Volcanic Ash.
-   **`DieterLavaSlideLevel`**: The level of Lava Slide to use.

## Buffs

-   **`UseDefensiveBuff`**: Controls the use of defensive buffs. `0` = off, `1` = self only, `2` = owner only, `3` = both.
-   **`UseOffensiveBuff`**: Controls the use of offensive buffs. `0` = off, `1` = self only, `2` = owner only, `3` = both.
-   **`UseProvokeOwner`**: If set to `1`, the homunculus will use Provoke on the owner to increase their ATK.
-   **`ProvokeOwnerMobbed`**: The number of monsters that need to be attacking the owner before the homunculus will use Provoke on them.
-   **`LifEscapeLevel`**: The level of Urgent Escape to use (for Lif).
-   **`FilirFlitLevel`**: The level of Flitting to use (for Filir).
-   **`FilirAccelLevel`**: The level of Accelerated Flight to use (for Filir).
-   **`AmiBulwarkLevel`**: The level of Castling to use (for Amistr).
-   **`UseBayeriAngriffModus`**: If set to `1`, Bayeri will use Angriff's Modus.
-   **`UseBayeriGoldenPherze`**: If set to `1`, Bayeri will use Golden Ferse.
-   **`UseDieterMagmaFlow`**: If set to `1`, Dieter will use Magma Flow.
-   **`UseDieterGraniticArmor`**: If set to `1`, Dieter will use Granitic Armor.
-   **`UseDieterPyroclastic`**: If set to `1`, Dieter will use Pyroclastic.
-   **`DieterPyroclasticLevel`**: The level of Pyroclastic to use.
-   **`UseEiraOveredBoost`**: If set to `1`, Eira will use Overed Boost.
-   **`UseSeraPainkiller`**: If set to `1`, Sera will use Painkiller.
-   **`DefensiveBuffOwnerMobbed`**: The number of monsters that need to be attacking the owner before the homunculus will cast a defensive buff on them.
-   **`PainkillerFriends`**: If set to `1`, Sera will use Painkiller on friends.
-   **`PainkillerFriendsSave`**: If set to `1`, Sera will use Painkiller on friends who are in a critical condition.

## Healing

-   **`HealSelfHP`**: The HP percentage at which the homunculus will heal itself.
-   **`HealOwnerHP`**: The HP percentage at which the homunculus will heal the owner.
-   **`UseAutoHeal`**: If set to `1`, the homunculus will automatically use healing skills.

## Movement & Positioning

-   **`FollowStayBack`**: The distance the homunculus will try to maintain from the owner when following.
-   **`StationaryAggroDist`**: The distance at which the homunculus will become aggressive towards monsters when the owner is stationary.
-   **`MobileAggroDist`**: The distance at which the homunculus will become aggressive towards monsters when the owner is moving.
-   **`StationaryMoveBounds`**: The maximum distance the homunculus can move from the owner when the owner is stationary.
-   **`MobileMoveBounds`**: The maximum distance the homunculus can move from the owner when the owner is moving.
-   **`DoNotUseRest`**: If set to `1`, the homunculus will not use the Rest state.
-   **`RestXOff`**: The X-coordinate offset from the owner where the homunculus will rest.
-   **`RestYOff`**: The Y-coordinate offset from the owner where the homunculus will rest.
-   **`MoveSticky`**: If set to `1`, the homunculus will be less likely to change its target.
-   **`MoveStickyFight`**: If set to `1`, the homunculus will be less likely to change its target while fighting.
-   **`DoNotAttackMoving`**: If set to `1`, the homunculus will not attack monsters that are moving.

## Kiting

-   **`KiteMonsters`**: If set to `1`, the homunculus will attempt to kite monsters.
-   **`KiteBounds`**: The maximum distance the homunculus can move from the owner while kiting.
-   **`KiteStep`**: The distance the homunculus will move with each kiting step.
-   **`KiteParanoidStep`**: The distance the homunculus will move with each kiting step when in paranoid mode.
-   **`KiteThreshold`**: The number of monsters that need to be attacking the homunculus before it starts kiting.
-   **`KiteParanoidThreshold`**: The number of monsters that need to be attacking the homunculus before it enters paranoid kiting mode.
-   **`KiteParanoid`**: If set to `1`, the homunculus will use paranoid kiting mode.
-   **`ForceKite`**: If set to `1`, the homunculus will always attempt to kite, regardless of other settings.

## Miscellaneous

-   **`DefendStandby`**: If set to `1`, the homunculus will stay by the owner's side when idle.
-   **`StickyStandby`**: If set to `1`, the homunculus will be less likely to change its target when in standby mode.
-   **`SpawnDelay`**: The delay in milliseconds after spawning before the AI becomes active. This prevents the homunculus from acting while it is still invincible.
-   **`StandbyFriending`**: If set to `1`, the homunculus will attempt to automatically friend other players' homunculi.
-   **`MirAIFriending`**: If set to `1`, enables compatibility with MirAI's friending system.
-   **`UseAvoid`**: If set to `1`, the homunculus will use a list of monsters to avoid.
-   **`TankMonsterLimit`**: The maximum number of monsters the homunculus will tank at once.
-   **`LavaSlideMode`**: Controls how Dieter uses Lava Slide.
-   **`PoisonMistMode`**: Controls how Sera uses Poison Mist.
-   **`AoEReserveSP`**: The amount of SP to reserve when using AoE skills.
-   **`ChaseSPPause`**: If set to `1`, the homunculus will pause chasing to recover SP.
-   **`ChaseSPPauseSP`**: The SP percentage at which the homunculus will pause to recover SP.
-   **`ChaseSPPauseTime`**: The duration in milliseconds to pause for SP recovery.
-   **`AttackTimeLimit`**: The maximum time in milliseconds to spend attacking a single monster.
-   **`UseBayeriSteinWand`**: If set to `1`, Bayeri will use Stein Wand.
-   **`BayeriSteinWandLevel`**: The level of Stein Wand to use.
-   **`UseSteinWandSelfMob`**: The number of monsters that need to be attacking the homunculus before it will use Stein Wand on itself.
-   **`UseSteinWandOwnerMob`**: The number of monsters that need to be attacking the owner before the homunculus will use Stein Wand on them.
-   **`UseSteinWandTele`**: If set to `1`, the homunculus will use Stein Wand after the owner teleports.
-   **`SteinWandTelePause`**: The delay in milliseconds after teleporting before using Stein Wand.
-   **`AssumeHomun`**: If set to `1`, the AI will assume it is controlling a homunculus (for use with mercenaries).
-   **`AttackLastFullSP`**: If set to `1`, the homunculus will use its remaining SP on a powerful attack before running out of SP.
-   **`DanceMinSP`**: The minimum SP required to use dance attacks.
-   **`AutoSkillLimit`**: The maximum number of times to use an auto-skill.
-   **`UseAutoPushback`**: If set to `1`, the homunculus will use a pushback skill to keep enemies away.
-   **`AutoPushbackThreshold`**: The distance at which the homunculus will use its pushback skill.
-   **`AoEFixedLevel`**: If set to `1`, AoE skills will be used at a fixed level.
-   **`UseSeraCallLegion`**: If set to `1`, Sera will use Call Legion.
-   **`SeraCallLegionLevel`**: The level of Call Legion to use.
-   **`UseBerserkMobbed`**: The number of monsters that need to be attacking the homunculus before it enters berserk mode.
-   **`UseBerserkSkill`**: If set to `1`, the homunculus will use skills in berserk mode.
-   **`UseBerserkAttack`**: If set to `1`, the homunculus will use basic attacks in berserk mode.
-   **`Berserk_SkillAlways`**: If set to `1`, the homunculus will always use skills in berserk mode.
-   **`Berserk_Dance`**: If set to `1`, the homunculus will use dance attacks in berserk mode.
-   **`Berserk_IgnoreMinSP`**: If set to `1`, the homunculus will ignore the minimum SP requirement in berserk mode.
-   **`Berserk_ComboAlways`**: If set to `1`, the homunculus will always use combo skills in berserk mode.
-   **`PVPmode`**: If set to `1`, enables PVP mode.
-   **`EleanorDoNotSwitchMode`**: If set to `1`, Eleanor will not switch between her two modes.
-   **`LagReduction`**: If set to `1`, enables lag reduction features.
-   **`HealOwnerBreeze`**: If set to `1`, Eira will use Silent Breeze to heal the owner.
-   **`UseSmartBulwark`**: If set to `1`, Amistr will use Castling more intelligently.

# Azzy AI v 1.

An advanced and comprehensive AI for use with the mercenary and homunculus systems

in Ragnarok Online.

## Features:

- Easy to use GUI Configuration Utility
- Default configuration works for most players with no or minimal configuration changes
- Full support for homunculus S system.
- Automatically use skills:
    o Offensive skills for homunculus and homunculus S, including debuffs
    o Pushback skills like Skid Trap and Arrow Repel
    o AoE skills depending on number of targets (configurable)
    o Self-buff skills – will not try to recast buffs after teleport
    o Provoke / Painkiller / Sacrifice on owner
    o Painkiller on other players (automatically recast)
    o Healing skills, on owner and self (for chaotic blessings)
    o Castling – to get monsters off owner, or even to move around the map
- Friend other players so your homunculus or mercenary defends them
    o Mercenary and homunculus automatically friended if both out at once
    o Cross and Circle motions when friending, like MirAI
- Support for multiple accounts in use simultaneously
    o Mercenary/homunculus autofriending not broken with multiple accounts
    o Buff timers not confused by using multiple accounts
    o Support for automatically friending multiple accounts
    o Framework for supporting different configurations for different accounts.
- Idle walk – have your mercenary or homunculus roam around you when there’s nothing else for it
    to do.
- Sniping – homunculus can use attack skills on a different monster than it’s currently fighting, to
    avoid wasting sp on a monster that’s already half dead, or to aggro monsters.
- Tanking – have the mercenary or homunculus tank for you or another player, or to mob for its own
    AoE.
- Dance Attack – homunculi (but not mercenaries) can attack slightly faster by moving while
    attacking.
- Kiting – mercenary or homunculus can run away from attacking monsters.
- Rescue – mercenary or homunculus can drop current targets to defend you, itself or friended
    players.
- Optional auto-shutdown feature (homunculus only) to exit game if certain monsters (such as those
    summoned by DBs) show up.


## Table of Contents

- AzzyAI Installation and setup.............................................................................................
   - Important note for users of Windows Vista and later.....................................................
   - Important note for players on illegal private servers
   - Configuration Quick-Start Guide....................................................................................
   - How to configure the AI using the GUI..........................................................................
   - How to manually configure the AI
- Using AzzyAI
   - Documentation conventions............................................................................................
   - Commanding a homunculus
   - Commanding a Mercenary..............................................................................................
   - How to friend another player
- Configuration options
   - Options related to movement
   - Options relating to use of attack skills..........................................................................
   - Options relating to use of buff skills.............................................................................
   - Options related to other skills
   - Options related to Berserk Mode
   - Options related to Kiting...............................................................................................
   - Other Options................................................................................................................
- Tactics
   - Mercenaries and tactics.................................................................................................
   - Editing the tactics list manually....................................................................................
   - Editing the tactics list using the GUI editor..................................................................
   - Basic Tactics
      - Sniping
      - Monster priority list
   - Skill Tactics
   - Kiting Tactics................................................................................................................
   - Reacting to casts
   - Pushback Tactics...........................................................................................................
   - Debuff Tactics...............................................................................................................
   - Skill-type Tactics
   - Rescue Tactics
   - SP Tactics......................................................................................................................
   - Snipe Tactics
   - KS Tactics
   - Weight Tactics
   - Chase Tactics
- Advanced Settings:
- Version History.................................................................................................................


## AzzyAI Installation and setup.............................................................................................

```
1.If you are using Windows Vista or Windows 7, please see below.
2.Download and extract the AzzyAI 1.50 package.
3.Copy all files inside the AI package into the USER_AI folder (inside the AI folder
in RO folder). The files must be placed in the USER_AI folder, not a folder inside
it.
a. If you already have a homunculus AI and do not want to replace it with
AzzyAI, do not copy over AI.lua
b. If you already have a mercenary AI and do not want to replace it with
AzzyAI, do not copy over AI_M.lua.
```
4. If needed, edit the configuration to meet your needs, either manually or using the
    included GUI configuration utility, AzzyAIConfig.
5. Start Ragnarok Online
6. Type /merai until it says your mercenary soldier AI has been customized, or /hoai
    until it says that the homunculus AI has been customized, as appropriate.
7. Summon mercenary/homunculus (or relog if it's already out, or vap/recall for
    homunculus) and have fun.
8. A file named AAIStartH.txt or AAIStartM.txt will be created in the RO folder
    when the AI is used in game. This file contains full version information, as well
    as record of certain error conditions. If this file is not created when using the AI in
    game, the AI is not installed correctly.

**_Upgrading from a previous version_**

When upgrading from a previous version, you should retain the file A_Friends.lua

- this contains the list of people who you have ‘friended’. For other configuration files:
    - No configuration files from 1.4x can be used with 1.50 or later.
    - Config files from 1.50 dev 4 or earlier are not compatible with 1.50 dev 5 and
       later, including the final version of 1.50.
    - Tactics and Extra files from 1.50 dev versions can be used with all 1.50 versions.

### Important note for users of Windows Vista and later.....................................................

Due to the UAC feature of these operating systems, it is extremely difficult to
make a mercenary or homunculus AI work when Ragnarok Online is installed in a

protected folder (of which Program Files is one). We recommend that you move the

entire Ragnarok Online folder to an unprotected location, such as C:/Games. After doing

this, delete the contents of USER_AI and reinstall the AI. Note that these steps are

unnecessary if UAC is disabled.


### Important note for players on illegal private servers

Illegal private servers are not supported by AzzyAI. The technical challenges are
considerable; there are a number different server emulators, and each of these behaves

differently. AzzyAI relies on the idiosyncratic behavior of the official server software

with regard to the allocation of actor IDs compensate for deficiencies in the API. It is

known and expected that AzzyAI will have targeting problems on most illegal private

servers. There are no plans to support these servers in future releases.

### Configuration Quick-Start Guide....................................................................................

If you are using AzzyAI with a homunculus S that previously was something

other than a Vanilmirth or Filir, you must set OldHomunType in the configuration.
Other than that, AzzyAI 1.50 should be usable out-of-the-box most users. Using

default settings, it will be aggressive when its HP is above 60% (and below that it will

only fight in defense of itself or the owner. To make it non-aggressive, set AggroHP to

100. It should use any offensive skills available to it when fighting a monster, and when

chasing a monster (if the skill has longer range than normal attacks, ie, homunculus
bolts). It will attempt to use any self-buff skills available to it except homunculus S skills,

including ones that affect the owner. This can be changed in the skill options.

### How to configure the AI using the GUI..........................................................................

Open the program AzzyAIConfig in your in your USER_AI folder. There are 8

tabs, 4 each for homunculus and mercenary: Configuration, Tactics, PVP Tactics, and

Extra Options. More information will be added when I get the new GUI in my hands.

### How to manually configure the AI

The AI configuration is controlled by three files each for mercenary and

homunculus AI, a config file, a tactics file, and an extra components file.

For the homunculus, these files are H_Config.lua, H_Tactics.lua, and H_Extra.lua
respectively.

For the mercenary, these files are M_Config.lua, M_Tactics.lua, and M_Extra.lua

respectively.

These files can be edited with any text editor. To easily edit them in windows,

double click the file, and when you get the message saying that windows cannot open this
file, choose "Select the program from a list", and choose Notepad, or a similar program (I

recommend Notepad++ ). Check the box "always use this program to open files of this

type", and click okay.


## Using AzzyAI

### Documentation conventions............................................................................................

Regardless of which method is used to configure the AI, refer to the following

chapters for details on the settings available. In the next sections, when the GUI

Configuration tool and the config files use a different name for an option, the name used

in the GUI is written first, followed by the name used in the config files, in parentheses.

In many cases, the config file uses a numeric value for an option, while the GUI uses a
word or check box; where it is not obvious what an option in the GUI refers to, that will

be noted under that option. Except where otherwise noted, all functions work for both

mercenaries and homunculi.

### Commanding a homunculus

From within the game, the client provides for a means of giving a limited number

of commands to your homunculus

- **Alt + R** : Enter standby mode. During this mode, the homunculus will become
    non-aggressive. If _DefendStandby_ is enabled, it will defend you while in this
    state. If _StickyStandby_ is enabled, it will return to this mode after it finishes
    fighting something. Press Alt + R again to exit standby mode.
- **Alt + Right click:** Move to this location. See _MoveSticky_ and related options.
    Also used for friending.
- **Alt + Double right click, on monster:** Drop everything, and attack this monster.
    You can configure the homunculus to use skills more aggressively when
    commanded to attack via Berserk Mode
- **Using monster/player targeted homunculus skill:** If the target is a player in a
    non-PVP situation, move into range and attempt to use the skill on them.
    Otherwise, attack the target, opening with the specified skill. You can configure
    the homunculus to use skills more aggressively when commanded to use a skill
    via Berserk Mode.
- **Using an untargeted or ground targeted homunculus skill:** This uses the skill
    without notifying the AI. This can result in the AI getting confused about skill
    delays, durations, and similar.
- **Sit:** When you sit, the homunculus will become non-aggressive unless
    _DoNotUseRest_ is disabled.


### Commanding a Mercenary..............................................................................................

From within the game, the client provides for a means of giving a limited number

of commands to your mercenary.

- **Ctrl + R:** Enter standby mode. During this mode, the mercenary will become
    non-aggressive. If _DefendStandby_ is enabled, it will defend you while in this
    state. If _StickyStandby_ is enabled, it will return to this mode after it finishes
    fighting something. Press Alt + R again to exit standby mode.
- **Ctrl + Right click:** Move to this location. See _MoveSticky_ and related options.
    Also used for friending.
- **Ctrl+ Double right click, on monster:** Drop everything, and attack this monster.
    You can configure the mercenary to use skills more aggressively when
    commanded to attack via Berserk Mode
- **Using monster/player targeted mercenary skill:** If the target is a player in a
    non-PVP situation, move into range and attempt to use the skill on them.
    Otherwise, attack the target, opening with the specified skill. You can configure
    the homunculus to use skills more aggressively when commanded to use a skill
    via Berserk Mode.
- **Using an untargeted or ground targeted mercenary skill:** This uses the skill
    without notifying the AI. This can result in the AI getting confused about skill
    delays, durations, and similar.
- **Sit:** When you sit, the mercenary will become non-aggressive unless
    _DoNotUseRest_ is disabled.

### How to friend another player

Friended players will be defended by the mercenary or homunculus as if they

were the owner. Friending will last until unfriended. Although it is possible to friend

other players’ mercenary or homunculus, the ID of a mercenary or homunculus changes

each time the user relogs, teleports, or summons the homunculus – as a result, friending
another players mercenary or homunculus will last only until they do one of those things.

1. Command mercenary/homunculus to walk to 1 cell north or south from the player.
2. Mercenary/homunculus will walk a circle around the target if the friend was added,
    or move back and forth in a straight line if the friend was removed.

```
Alternately, friends can be added by directly editing A_Friends.lua, using the account
ID of the player from ROPD or other sources. To add a friend, add a line:
MyFriends[(account number)]=
```

## Configuration options

These options control both the basic and advanced behavior of the homunculus.

**OldHomunType** - For homunculus S, this value is used to determine what the

homunculus was in its past life. For your convenience, the three possibilities are listed in

H_Extra.lua, and you need only comment out the incorrect option (by adding “--“ in front

of it) and uncomment the correct option (by removing the “--" in front of it). This setting
is ignored if your homunculus was previously a Vanilmirth; Vanilmirth-ness can be

automatically detected.

**LagReduction** – On some servers, a peculiar type of lag is observed on crowded or

heavily loaded maps, where both the player and homun lag when the homunculus is out,
but lag is not observed with the homun not out. Setting this to 1 (true) will try to reduce

the number of commands the homun sends; this has the disadvantage of reducing

responsiveness on servers that don’t lag. **_This setting is recommended for all users with_**

**_homun and merc out at same time!_**

As of AzzyAI version 1.55, this can be set to a number larger than 1. In this case,
after sending a command, the homun will wait one or more AI cycles before sending

further commands. This will dramatically lower responsiveness, but it should make use of

the homunculus practical even on very poorly performing servers.

**Options related to engaging and fighting enemies**
Your homunculus will normally engage (ie, seek out and attack, without having

been attacked) monsters which it is configured to _attack_ (see: Tactics) when they are near

the mercenary or homunculus.

**StationaryAggroDist, MobileAggroDist** – This is the distance from the owner, in cells,
within which the homunculus will attack targets while the owner is stationary or moving,

respectively. These options replace _AggroDist_ in 1.35 and earlier. These do not control

how far the homunculus will move from owner, nor to what distance it will return to (see

_MoveBounds_ and _FollowStayBack_ ).

**AggroHP** , **AggroSP** – The homunculus will engage monsters only when it has **more**
than this percentage of its HP or SP. If you set either to 100, it will never engage targets

and will only attack when homunculus/owner/friend is attacked.

**AttackLastFullSP** – For monsters where the tactic is set to ATTACK_LAST, if this is

enabled, these monsters will be attacked only if the homunculus has 100% SP (this is a
good setting for event monsters and plants, where you don’t want them sacrificing any SP

regen to kill them, but might as well kill them when at full SP.

**DoNotAttackMoving** – Set to 1 to not attack moving monsters. This may help prevent

wasted time against fast moving targets, kill-stealing from people mobbing monsters, and

so on. Obviously, it is unsuitable for use while AFK leveling in OD2 for example.
**SuperPassive** – If set to true (1), the homunculus will never fight another monster unless

directly commanded to.


**DoNotChase** – If set to true (1), the homunculus will never move to attack a monster. It

will still engage monsters at range if it has access to a ranged attack and is configured to
use it.

**DefendStandby** – If set to 1, when homunculus is placed in standby mode using alt+t, it

will continue to defend the owner.

**StickyStandby** – If set to 1, when homunculus defends owner while in standby, it will

return to standby afterwards. If set to 2, this will be remembered even if the owner
teleports or relogs. Recommend setting to 1 or 2 when _DefendStandby_ is in use.

**UseDanceAttack** – If set to 1, when homunculus is attacking with normal attacks, it will

“dance” to increase it’s effective attack speed. homunculus only (dancing no longer

increases the attack speed of mercenaries). Note that dancing prevents the homunculus

from regenerating SP while fighting monsters – if your homunculus has an active attack
skill, you are likely better off NOT using dance attack.

**TankMonsterLimit** – Set this to the maximum number of monsters that the homunculus

should attempt to tank for another killer using the _TACT_TANK_ tactic.

**AutoDetectPlant** _(mercenary only)_ – When this is set to 1, the mercenary will assume

that all monsters that it has not seen move or attack are plants/mushrooms, and should be
treated differently (ignored, by default, see Tactics). This setting should be set to 0 if you

are fighting stationary monsters (such as Geographers).


### Options related to movement

**FollowStayBack** – Your homunculus will stay this many cells behind you when

following you.

**StationaryMoveBounds, MobileMoveBounds** – This is the distance from the owner, in

cells, within which the homunculus may move, for example, to respond to attacks, while
the owner stationary or moving, respectively. If it finds itself beyond this distance, it will

drop everything to try to get back to you. These options should be set no higher than 15.

To control the distance at which it will attack monsters, use the _AggroDist_ options. To set

how close to the owner it will return to after killing, use _FollowStayBack_ This replaces

_MoveBounds_ in 1.35 and earlier.
**MoveSticky** – If set to 1, if you command your homunculus to move, it will stay there,

and not return to you, until you tell it to move again.

**MoveStickyFight** – If set to 1, when your homunculus is in the above “sticky move”

state, it will still fight normally.

**UseIdleWalk** – Set this to a value other than 0 to enable walking motions while idle and
when HP and SP are over AggroHP/SP, and SP is _IdleWalkSP_. The options are:

1. Circle, around owner.
2. Cross, around owner.
3. Square, around owner.
4. Random
5. Route – Linear (see Route Walk in advanced options)
6. Route – Circular (see Route Walk in advanced options)

**IdleWalkDistance** – For circle, cross, square, or random idle-walk, move this far from

owner.
**IdleWalkSP** – When SP (as a percentage) is lower than this, do not use IdleWalk.

**RelativeRoute** – Route is specified in relative terms (see Route Walk in advanced

options)

**RestXOff** , **RestYOff** – When you sit down, your mercenary/homunculus will go non-

aggressive, and if it isn't doing anything else, it will move close to you. This is the x and
y offset it from the players position that it will move to. Can be positive or negative.

**DoNotUseRest** – When this is set to 1, the homunculus will not “rest” when the owner

sits.

**ChaseSPPause** – When this is set to 1, the homunculus will delay chasing monsters and

following of the owner immediately before an SP-regen tick, and will wait until that SP
regen tick occurs before moving. This can be overridden on a per-monster basis by

TACT_CHASE; if set to CHASE_ALWAYS for a monster, it will disregard this

consideration.

**ChaseSPPauseSP** – If _ChaseSPPause_ is enabled, it will be used when the homunculus

has less than this much SP. If specified as a negative number, it will be treated as a
percentage.

**ChaseSPPauseTime** – If _ChaseSPPause_ is enabled, this is the maximum time (in

milliseconds) that the homunculus will wait for an SP tick (if an SP tick is farther away

than this, it will not try to wait for it).


### Options relating to use of attack skills..........................................................................

**UseAttackSkill** – Set this to 1 to enable automatic use of offensive skills.

**UseSkillOnly** – Set this to Skill Only (1) to only use skills to attack. Set this to While

Attacking (0) to use skills while attacking, but not while chasing a monster. Set this to

Chase (-1) to use while chasing or attacking. The key difference between using while
chasing+attacking vs attacking only is that if set to attacking only (1), it will not use

ranged attack skills until it is within melee range. **_Chase (-1) is the recommended setting,_**

**_and is the correct setting for most users – Do not change this unless you understand_**

**_why you are doing so!_**

**AutoMobCount** – If the mercenary/homunculus has a mob attack, it will use it only if
there are at least this many targets attacking it. This is subject to the _Weight_ tactic (see

below)

**AoEFixedLevel** – If the homunculus has a mob attack, it will always use the level

specified by the _(homunculus S type)(homunculus s skill name)Level_ option, regardless of

tactics skill level settings. homunculus only, defaults to 1.
**AutoSkillLimit** – Set this to a number to limit the number of times an offensive skill will

be used on any target. This can be overridden by tactics settings.

**UseHomunSSkillChase** – Set to 1 (default) to use the homunculus S single target attack

skills while chasing

**UseHomunSSkillAttack** – Set to 1 (default) to use the homunculus S single target attack
skills while attacking.

The purpose of these two options is to give players a way to disable the skills while

attacking or chasing. For example, many of the homunculus S skills have interruptible

cast times – if you’re on a map with monsters that your homunculus cannot flee, you

probably do not want to use these skills while attacking – on the other hand, while
chasing, the monster is not attacking the homunculus, and you can safely use interruptible

attack skills on it.

**AttackSkillReserveSP** – The homunculus will not use offensive skills if they would

leave it with less than this amount of SP. This is overridden on a per-monster basis by

TACT_SP. The purpose of this option is to keep a reserve of SP for emergencies (via
BerserkMode and Berserk_IgnoreMinSP), or particularly dangerous monsters (via

TACT_SP) and/or to ensure that homunculus reserves enough SP to maintain buffs. For

limiting use of the buff skill Amistr Bulwark, see _UseSmartBulwark_

**UseEiraEraseCutter** – If set to 1, enable use of the Eira skill, Erase Cutter.

**UseEiraXenoSlasher** – If set to 1, enable use of the Eira skill, Xeno Slasher.
**UseBayeriStahlHorn** – If set to 1, enable use of the Bayeri skill, Stahl Horn.

**UseBayeriHailageStar** – If set to 1, enable use of the Bayeri skill, Hailage Star.

**UseDieterLavaSlide** – If set to 1, enable use of the Dieter skill, Lava Slide. See

_LavaSlideMode_.

**UseSeraParalyze** – If set to 1, enable use of the Sera skill, Needle of Paralysis.
**UseDieterVolcanicAsh** – If set to 1, enable use of the Dieter skill, Volcanic Ash, as a

debuff skill.

**UseSeraPoisonMist** – If set to 1, enable use of the Sera skill, Poison Mist. See

_PoisonMistMode_.

**UseSeraCallLegion** – If set to 1, enable use of the Sera skill, Call Legion. See


TACT_SKILLCLASS.

**UseEleanorSonicClaw** – If set to 1, enable use of the Eleanor skill, Sonic Claw.
**UseEleanorTinderBreaker** – If set to 1, enable use of the Eleanor skill, Tinder Breaker.

**EleanorDoNotSwitchMode** – Normally, we try to track what mode we’re in and correct

it with Style Change. It has been found that this does not always provide acceptable

behavior, due to challenges in determining what mode the homunculus is in. If

_EleanorDoNotSwitchMode_ is set to 1, we instead assume we are always in the right
mode, and will never autocast Style Change – it is up to the owner to make sure it is in

the right mode.

**EiraEraseCutterLevel** – Use this level of the Eira skill, Erase Cutter.

**EiraXenoSlasherLevel** – Use this level of the Eira skill, Xeno Slasher.

**BayeriStahlHornLevel** – Use this level of the Bayeri skill, Stahl Horn.
**BayeriHailageStarLevel** – Use this level of the Bayeri skill, Hailage Star.

**DieterLavaSlideLevel** – Use this level of the Dieter skill, Lava Slide. See

_LavaSlideMode_.

**SeraParalyzeLevel** – Use this level of the Sera skill, Needle of Paralysis.

**SeraPoisonMistLevel** – Use this level of the Sera skill, Poison Mist. See
_PoisonMistMode_.

**SeraCallLegionLevel** – Use this level of the Sera skill, Call Legion.

**EleanorSonicClawLevel** – Use this level of the Eleanor skill, Sonic Claw.

**EleanorSilverveinLevel** – Use this level of the Eleanor skill, Silvervein Rush.

**EleanorMidnightLevel** – Use this level of the Eleanor skill, Midnight Frenzy.
**EleanorTinderBreakerLevel** – Use this level of the Eleanor skill, Tinder Breaker.

**EleanorCBCLevel** – Use this level of the Eleanor skill, C. B. C.

**EleanorEQCLevel** – Use this level of the Eleanor skill, E. Q. C.

**AoEFixedLevel** – If set to 1 (the default) the AI will always use the level specified by

the _(homunculus S type)(homunculus s skill name)Level_ directive when using AoE skills

- if this is set to 0, the level used can be overridden by the monster-specific tactics

settings. Usually you want to leave this at 1, so your homunculus will, for example, use a

low level of bolts on an enemy (to save SP), but use the max level of the AoE skill in

order to maximize the size of the AoE. homunculus only (as mercenaries can only use

max level of their skills).
**AoEMaximizeTargets** – Set this to 1 to try to hit as many targets as possible with AoE

attacks, at the risk of aggroing additional monsters and not hitting the original target (for

example, if there are a large number of monsters stacked up on the northeast side of the

homunculus, as it attacks a solitary monster to the southwest, using a skill with a 3x

AoE – if this was 0, it will not use an AoE (as it would only hit 1 target). If this was 1, it
would use the skill on the stack of monsters to the northeast, resulting in it not hitting it’s

current target, but hitting the whole stack of monsters).

**AoEReserveSP** – If this is set to 1, attack skills will not be used if doing so would leave

the homunculus without enough SP to use it’s AoE skill

**AllowSBR44** – If this is set to 0 (the default), the AI will block any attempt to manually
cast SBR44. This is to help prevent accidental use of the skill. Unfortunately I can’t find

a way to do the same thing for Self Destruct, which is much easier to accidentally use.


### Options relating to use of buff skills.............................................................................

For each buff skill, you can set it to be used at different times depending on what

you set the option to. The options are:

-2: When idle, if nothing else to do

-1: While chasing (so it won’t waste the skill when nothing else to kill)
0: Do not use this skill.

1: While idle

2: While chasing or attacking in berserk mode (see Berserk Mode options below)

3: As soon as possible, interrupting other actions. This will not result in the target

being dropped EXCEPT in the case of Painkiller and Provoke.

For homunculus S buff skills, no facility is provided to set the level, on the

grounds that the higher levels of those skills are all-around better to use. For non-S

homunculus skills, there is an option to set the level, because the higher levels have

longer cooldowns; as a result the lower levels are more useful in many situations.
**UseOffensiveBuff** – This controls use of offensive self-buff skills:

- Flitting
- Mental Charge
- Weapon Quicken
- Bloodlust

**UseDefensiveBuff** – This controls use of defensive self-buff skills, if it has one:

- Amistr Bulwark
- Accelerated Flight
- Guard
- Parrying
- Urgent Escape

**UseAutoSight** _(mercenary only)_ – This controls use of Sight.

**UseAutoMag** _(mercenary only)_ – This controls use of Magnificat.

**UseDieterGraniticArmor** – This controls use of the Dieter skill Granitic Armor.
**UseDieterMagmaFlow** – This controls use of the Dieter skill Magma Flow.

**UseDieterPyroclastic** – This controls use of the Dieter skill Pyroclastic.

**UseEiraOveredBoost** – This controls use of the Eira skill Overed Boost.

**UseSeraPainkiller** – This controls use of the Sera skill Painkiller on the owner.

**UseBayeriGoldenFerse** – This controls use of the Bayeri skill Golden Ferse.
**UseBayeriAngriffModus** – This controls use of the Bayeri skill Angriff Modus.

**UseBlessingOwner** – This controls use of the GM Support Mercenary skill Blessing on

the owner.

**UseBlessingSelf** – This controls use of the GM Support Mercenary skill Blessing on the

mercenary.
**UseKyrieOwner** – This controls use of the GM Support Mercenary skill Kyrie Eleison

on the owner.

**UseKyrieSelf** – This controls use of the GM Support Mercenary skill Kyrie Eleison on

the mercenary.

**UseIncAgiOwner** – This controls use of the GM Support Mercenary skill Increase
Agility on the owner.


**UseIncAgiSelf** – This controls use of the GM Support Mercenary skill Increase Agility

on the mercenary.
**PoisonMistMode** – If set to 0, Poison Mist will be used as a normal AoE attack.

Otherwise, it will be kept up centered on owner, in which case, this controls when to use

it. It is recommended to set this to 1 when AFK leveling on crowded maps, as it will

improve exp/hr and cause less disruption to other players on the map. Setting this to

ASAP is not recommended.
**LavaSlideMode** – If set to 0, Lava Slide will be used as a normal AoE attack. Otherwise,

it will be kept up centered on owner, in which case, this controls when to use it. It is

recommended to set this to 1 when AFK leveling on crowded maps, as it will improve

exp/hr and cause less disruption to other players on the map. Setting this to ASAP is not

recommended.
**UseProvokeOwner** _(mercenary only)_ – This controls use of Provoke on the owner.

**ProvokeOwnerMobbed** – If this is set to a non-zero number, provoke or painkiller will

not be used on the owner if there are less than this many monsters on the owner, AND the

owner is below 90% hp. TACT_WEIGHT applies here.

**DefensiveBuffOwnerMobbed** – If this is set to a non-zero number, Painkiller and Kyrie
Eleison will not be used on the owner if there are less than this many monsters on the

owner, AND the owner is below an HP threshold set by _DefensiveBuffOwnerHP_.

**DefensiveBuffOwnerHP** – If _DefensiveBuffOwnerMobbed_ is set to a non-zero number,

Painkiller and Kyrie Eleison if the owner's HP as a percentage is higher than

_DefensiveBuffOwnerHP_.
**UseSacrificeOwner** – This controls use of Sacrifice on the owner. This only works if the

mercenary is within 10 levels of the player, and the skill behaves inconsistently due to

game bugs – under certain conditions which remain unclear, it is possible for the

mercenary to enter a state where it is never able to cast Sacrifice, as if Sacrifice is still up,

even though it is not. Mercenary only.
**AmiBulwarkLevel** – This is the level of Amistr Bulwark to use. Default is 5.

**FilerFlitLevel** – This is the level of Flitting to use. Default is 1.

**LifEscapeLevel** – This is the level of Urgent Escape to use. Default is 5. Zero (0) is not a

valid value – disable use of Accelerated Flight using _UseAutoQuicken_.

**FilirAccelLevel** – This is the level of Accelerated Flight to use. Default is 1. Zero (0) is
not a valid value – disable use of Accelerated Flight using _UseAutoGuard_.

**UseSmartBulwark** – For an Amistr type homunculus, if this is set to 1, Amistr Bulwark

will only be cast if doing so would leave the homunculus with at least 120 SP, so that it

will be able to use Bloodlust if/when the cooldown ends. This will be disregarded if the

homunculus has less than 160 max SP or use of bloodlust is not enabled.
**UseAutoHeal** – Set this to 1 to enable automatic use of healing skills (chaotic blessing or

healing hands). Set this to 2 to enable automatic use of healing skills, but only when idle

(including the time between killing one target and selecting the next). Set this to 3 to

enable use of healing skills only when otherwise idle if there’s nothing else to do. This

works only with Lif and Vanilmirth based homunculi.
**HealOwnerBreeze** – Set this to 1 to have the AI use Silent Breeze to heal it’s owner (in

accordance with above UseAutoHeal, HealOwnerHP) if available. This should only be

enabled if you’re on a server with the silent breeze nerf AND you have 100% silence

resist.


**HealOwnerHP** – This is the owner’s HP, as a percentage, below which the homunculus

will attempt to use a healing skill to heal the owner (assuming _UseAutoHeal_ is enabled).
Lif will use level 5 of Healing Hands, while a Vanilmirth will use level 3 of Chaotic

Blessings (unless it’s HP is below _HealSelfHP_ and it is currently idle (so it has no enemy

to heal), in which case it will use level 5).

**HealSelfHP** – For a Vanilmirth with Chaotic Blessings, set this to the HP (as a

percentage) at which the homunculus will use Chaotic Blessings (level 4, see note above
for when it will use level 5) to heal itself. This does not work for Lif, as Healing Hands

can only heal the owner.

**PainkillerFriends** – Set to 1 to auto-painkiller friended players. Players will be added to

the painkiller list if you manually command the homunculus to use Painkiller on them

**PainkillerFriendsSave** – Set to 1 if using _PainkillerFriends_ to have homunculus
remember players who you have prescribed painkillers to.


### Options related to other skills

**UseAutoPushback** – Set this to 1 to enable automatic use of pushback skills to get

monsters off of the mercenary. This is subject to override by the tactics list, but must be

enabled here to use. This is most useful for archer mercenaries, particularly the level 6
one (with skid trap). Mercenary only.

**AutoPushbackThreshold** – This is the distance between the mercenary and target at

which the mercenary will attempt to use a pushback skill on it. Mercenary only.

**UseCastleDefend** – For an Amistr, enable this to use Castling if the owner is being

attacked by enough monsters, and the Amistr is being attacked by fewer monsters than
the owner.

**CastleDefendThreshold** – If _UseCastleDefend_ = 1 then castling will be cast when there

are at least this many monsters on the owner. The _Weight_ tactic does apply to this.

**UseCastleRoute** – For an Amistr, enable this to use Castling to walk the owner along a

route; see _Route Walk_ under advanced options.
**UseBayeriSteinWand** – Enable this option to use the Bayeri skill Stein Wand (“Stone

Wall”) when a sufficiently large mob is attacking the owner or homunculus.

**UseSteinWandOwnerMob** – Use steinwand when there are this many monsters

attacking the owner (TACT_WEIGHT applies here).

**UseSteinWandSelfMob** – Use steinwand when there are this many monsters attacking
the homunculus (TACT_WEIGHT applies here).

**BayeriSteinWandLevel** – Use this level of the Stein Wand.

**UseStienWandTele** – Use stienwand when you log in and when you land from teleport,

but never any other time after a short delay. I'd suggest using this with _DoNotChase_ , and

use of Hailage Star enabled. The idea being that you teleport around, and if you see
monsters, you stop teleporting, the Bayeri casts Stein Wand, and then blows the mob

away with Hailage Star. This should not be used with _UseBayeriSteinWand,_ as this may

result in unexpected behavior.

**SteinWandTelePause** – Time to pause after landing (from teleport or summoning)

before using Stein Wand if _UseSteinWandTele_ is enabled.


### Options related to Berserk Mode

Through this feature, you can have the homunculus attack more aggressively in

response to commands or large mobs. In the case of responses to commands, it will leave

berserk mode upon killing the target.

**UseBerzerkSkill** – Set to 1 to enter berserk mode when commanded to use an offensive
skill.

**UseBerzerkAttack** – Set to 1 to enter berserk mode when commanded to attack.

**UseBerserkMobbed** – Set to 0 to disable, otherwise, when fighting this many or more

monsters at once (total of monsters on homunculus and friends/owner), homunculus will

go into berserk mode until there are fewer than this many monsters.
**Berzerk_SkillAlways** – Set to 1 to always use offensive skills when in berserk mode.

**Berzerk_Dance** – Set to 1 to use dance attack when in berserk mode (homunculus only).

**Berzerk_IgnoreMinSP** – Set to 1 to ignore _AttackSkillReserveSP_ when in berserk mode.

### Options related to Kiting...............................................................................................

When using archer mercenaries, it is frequently advantageous for the mercenary

to try to run away from monsters that try to attack it, while attacking them. This is called

kiting (pronounced kite-ing). The default values for the kiting steps, thresholds, and
bounds have been chosen empirically – you should not change them unless you have a

good reason.

**KiteMonsters** – Set this to 1 to enable kiting.

**KiteParanoid** – Set this to 1 to default to kiting before being attacked. This can be
overridden by tactics settings.

**KiteStep** – This is the number of cells that homunculus will move to kite. Leave at 5

unless you have good reason to change.

**KiteThreshold** – How close a monster has to be before triggering kiting, when monster

has attacked homunculus. 3 works pretty well.
**KiteParanoidStep** – This is the number of cells that homunculus will move when kiting

before being attacked. Leave at 2 unless you need the homunculus to be unusually

fearful.

**KiteParanoidThreshold** – How close a monster has to be before triggering kiting

without being attacked.
**KiteBounds** – This is the maximum distance the homunculus will move from owner to

kite. Must be less than _MoveBounds_.

**FleeHP** – Only kite when below this much hp, as a percentage. Set to 0 to ignore this

condition.


### Other Options................................................................................................................

These options may be used to tune behavior, particularly on laggy connection.

**SpawnDelay** – After spawning, the homunculus will wait this long (in milliseconds)

before trying to act. It is important to not allow the homunculus to act immediately; that

can result in failure of killsteal prevention measures while teleporting.
**AutoSkillDelay** – homunculus will wait this long between trying to use skills, even those

with no skill cooldown, to prevent problems like “double casting” of skills. This is the

length of the delay in milliseconds.

**AssumeHomun** – With this set to 1, the homunculus will attempt to automatically friend

the owner’s mercenary (and vice-versa). Set to 0 only if you (for whatever reason) do not
want your homunculus to “ks” your mercenary (or vice-versa)

**UseAvoid** – homunculus only. When this is set to 1, whenever the homunculus sees a

monster of a type listed in H_Avoid.lua, it will forcibly exit the RO client. H_Avoid.lua

comes populated with all MVPs that can be summoned from Bloody Branches, as well as

several nasty DB monsters. You may customize it by following the examples in
H_Avoid.lua. **It is recommended to test this before relying on it** , because on some

versions of windows, os.exit() simply errors the client, without disconnecting you until

you respond to the error message.

**PVPmode** – Set to 1 to enable PVP functionality

**StandbyFriending** – Set to 1 to use the old AzzyAI friending method.
**MirAIFriending** – Set to 1 (default) to emulate MirAI friending.


## Tactics

Through the tactics system, it is possible to configure your mercenary or
homunculus to treat different types of monsters differently – for example, prioritizing

powerful monsters, and ignoring plants and mushrooms.

### Mercenaries and tactics.................................................................................................

Mercenaries cannot identify monsters. In order for any entry other than the default

entry to be used on a mercenary, you must have an updated MobID file for the map and

server you are on. See the separate document describing the use and creation of MobID

files. For mercenaries, only the default tactic, and the two others noted below, can be
used without creating a MobID file.

```
There are two ways to create a MobID file.
The first is manually, using the AzzyAI Improved Data Gathering basic AI. See
```
the documentation included with that AI for more information

The second way is to use the mercenary and a homunculus at the same time, with
LiveMobID. See the section below under Advanced Features below. Whenever merc and

homun are used simultaneously, it is recommended to enable LagReduction.

### Editing the tactics list manually....................................................................................

The tactics is stored in H_Tactics.lua or M_Tactics.lua, for mercenary and homunculus

respectively. The file contains an entry for each kind of monster you plan to be fighting.

For each entry, there are 7 fields for different settings. The format of a tactics list entry is:

MyTact[id]={TACT_BASIC,TACT_SKILL,TACT_KITE,TACT_CAST,TACT_PUSH

BACK,TACT_DEBUFF,TACT_SIZE,TACT_RESCUE,TACT_SP,TACT_SNIPE,TAC

T_KS,TACT_WEIGHT,TACT_CHASE}

The ‘id’ is the type id of the monster (obtained from database site)
In addition to the IDs of monsters, there are several IDs used for more general behavior:

MyTact[0] is the default set of tactics the homunculus will use

MyTact[10] is the default set of tactics used with monsters detected as being summoned

MyTact[11] is the default set of tactics used for monsters that appear to be plants when

AutoDetectPlants is turned on (mercenary only)

There is no limit to the number of tactics that can be added, however, there can

only be one tactic for any given monster. See the notes in the Extras file for guidance on

expanding the tactic system.

### Editing the tactics list using the GUI editor..................................................................

Using the GUI, open the appropriate tactics tab.


- To add a new tactic, click the Add button, and fill in the monster name and id.
    The name is only cosmetic; the key value is the ID, which can be obtained from a
    database site. Select the tactics from the dropdown menus.
- To edit an existing tactic, click the tactic, and select the desired tactics from the
    dropdown menus.
- To remove a tactics entry, click the tactic, and click the remove button.
- When finished, click the Apply Settings button to save changes.

### Basic Tactics

This option controls when and if the homunculus or mercenary should attack this

monster.

**Tank (TACT_TANK):** Hit monster once, and then hold it until something kills it.

**Tank & Mob (TACT_TANKMOB):** Hit monster once, and then hold it until something

kills it. If (when) there are enough targets attacking the homunculus or mercenary, attack

one and use anti-mob skills to kill the mob.
**Ignore (TACT_IGNORE):** Do not attack the monster, at all, unless manually

commanded to do so

**Attack – Low (TACT_ATTACK_L)** : Seek out and attack this monster only if there are

no higher priority targets, and do not prioritize attacking this monster if it is currently

attacking the homunculus or owner/friend.
**Attack – Medium (TACT_ATTACK_M):** Seek out and attack this monster, unless

there are higher priority targets.

**Attack – High (TACT_ATTACK_H)** : Seek out and attack this monster, assuming not

busy responding to React monsters.

**Attack – Top (TACT_ATTACK_TOP)** : Seek out and attack this monster – top priority.
**Attack – Last (TACT_ATTACK_LAST)** : Seek out and attack this monster only if

there’s nothing better to do. See _AttackLastFullSP_. This option is a good choice for

plants/mushrooms, worthless event monsters, and similar.

**React – Low (TACT_REACT_L):** Attack this monster when self/owner/friend attacked,

low priority. _Attack – Medium_ and _Attack – High_ take priority over this, and do not
prioritize attacking this monster if it is currently attacking the homunculus or

owner/friend.

**React – Medium (TACT_REACT_M):** Attack this monster when self/owner/friend

attacked, medium priority.

**React – High (TACT_REACT_H):** Attack this monster when self/owner/friend
attacked, high priority.

**React – Self (TACT_REACT_SELF):** Attack this monster when

mercenary/homunculus only attacked, with top priority (excepting ATTACK_TOP) –

intended for use on things that would pose a threat to homunculus if they were attacking

the homunculus, and hence need to be killed ASAP.
**Attack Low, React Medium (TACT_ATK_L_REACT_M):** As Attack – Low when


the monster is not currently attacking the homunculus or owner/friend. Otherwise, as

React – Medium. This is a particularly good choice for weak assist monsters, like steel
chonchons in OD2, which are not a priority to kill, but can lead to dangerous mobs once

aggro’ed.

#### Sniping

Sniping tactics are treated like attack for the purpose of normal attacks, but if your

homunculus is attacking another monster, and has an appropriate attack skill, and SP to

use it, and would not otherwise use an anti-mob skill, it will use its attack skill on a
nearby monster with the Snipe tactic _which it is not currently fighting_. This works best

with Caprice. Take care that if the bolt does not 1-shot the monster, this will result in

aggroing additional monsters on the homunculus.

**Snipe – Low (TACT_SNIPE_L):** Attempt to snipe this monster even while attacking
other monsters, low priority

**Snipe - Medium (TACT_SNIPE_M):** Attempt to snipe this monster even while

attacking other monsters, medium priority

**Snipe - High (TACT_SNIPE_H):** Attempt to snipe this monster even while attacking

other monsters, high priority

#### Monster priority list

1. Attack – Top
2. React – Self
3. React – High
4. React – Medium
5. Attack – High or Snipe – High
6. Attack – Medium or Snipe – Medium
7. React – Low
8. Attack – Low or Snipe – Low
9. Tank or Tank & Mob
10. Attack – Last

### Skill Tactics

This option controls if and how many times an offensive skill will be used on a target of

this type:

- SKILL_NEVER - never use skills
- SKILL_ALWAYS - always use skills.
- Set to a positive integer to use a skill that number of times.
- Set to a negative number to use a level of the attack skill less than the maximum
    level. (homunculus only). This is the proper setting for SNIPE tactics.


### Kiting Tactics................................................................................................................

This option controls whether to kite (run away from, generally rather clumsily) from this
target, if kiting is enabled.

- KITE_NEVER - never kite from this kind of monster.
- KITE_REACT - kite from this kind of monster only if attacked.
- KITE_ALWAYS - always kite from this monster - recommended for aggressive
    monsters.

### Reacting to casts

This option controls whether to assume casts from this monster are aggressive acts and
react to them. Also, this includes options which will immediately use a skill on a monster

targeting the homun or owner with a skill that has a cast bar. The options are:

- CAST_PASSIVE – do not treat casting as hostile.
- CAST_REACT – treat casting on self/player/friend as hostile
- CAST_REACT_ANY – React to casts by immediately using any offensive skill
- CAST_REACT_BREEZE – React to casts by immediately using Silent Breeze
- CAST_REACT_OLD – React to casts by immediately using Moonlight or Caprice
- CAST_REACT_MOB – React to casts by immediately using an anti-mob skill
- CAST_REACT_DEBUFF – React to casts by using a debuff.
- CAST_REACT_MINION – React to casts by dispatching minions (ie, Summon
    Legion)

### Pushback Tactics...........................................................................................................

This option controls whether to use pushback skills to try to push monsters off of the
mercenary or owner. This is available for mercenaries with pushback skills only, as no

homunculus skills have a pushback effect other than Stahl Horn, which is thoroughly

ineffective for pushing monsters away due to its long cast time.

- PUSH_NEVER – do not use pushback skills on this monster.
- PUSH_SELF – Use pushback skills on this monster if mercenary is attacked
- PUSH_FRIEND Use pushback skills on this monster if owner/friend is attacked

### Debuff Tactics...............................................................................................................

This option controls what, if any, debuff skills will be used (mercenary only):

- When using GUI, select the skill, and whether you want it to use it when attacking
    or chasing.
       o Set to All to use any skill listed in BasicDebuffs[] (default: everything
          except traps and provoke).
- When editing tactics file directly, Set to the ID of the skill (you can use the skill
    name, ex ‘MER_PROVOKE’) to use that debuff – use a positive number to use it
    only while attacking, or a negative number (or, if using the skill name, ex: ‘-


```
1*MER_PROVOKE’ to use it while chasing.
o Set to 1 or -1 to use whatever debuff the mercenary might have while
attacking or while chasing, respectively
```
### Skill-type Tactics

This determines which kind of single-target attack skills to use against a given type of
monster. This was intended for use with homunculi, but can be used for mercenaries; in

that case, the only option that may be interesting is CLASS_MOB, and even then, the

mercenary tactics limitations may make this less than useful to mercenaries.

- CLASS_BOTH – Default – use either type of skill on this monster.
- CLASS_OLD – Use only pre-S single target skills (ie, Moonlight and Caprice).
- CLASS_S – Use only homunculus S single target skills – on a mercenary, this
    will result in no use of skills versus the monster; don’t do it.
- CLASS_MOB – Use anti-mob skills against this target, even if there are not
    enough monsters around it to normally justify using an anti-mob skill.
- CLASS_COMBO_1 – When using combo skills, use the second combo skill after
    the first, but do not use the third. Note that Eleanor’s combo skills do less damage
    than simply spamming sonic claw with 10 spheres, so this should be used only
    when another effect of the combo skills is desired.
- CLASS_COMBO_2 – When using combo skills, complete the combo. Note
    above caveat.
- CLASS_MINION – Summon minions to attack this monster. Presently the only
    applicable skill is the Sera skill Call Legion. This works well with a snipe tactic,
    as it will send it’s minions off to attack the target, and then go attack something
    else while it’s minions shred their target; this also seems to reduce the incidence
    of the bug wherein the summoned minions stop attacking their target.
- CLASS_GRAPPLE – Use Tinder Breaker against this monster (Eleanor only)
- CLASS_GRAPPLE_1 – As above, only combo to QBC.
- CLASS_GRAPPLE_2 – As above, but complete the combo.
- CLASS_MIN_OLD – Summon minions, AND use pre-S homunculus attack skills
    on this monster.
- CLASS_MIN_S – Summon minions, AND use homunculus s attack skills this
    monster.

### Rescue Tactics

This option controls whether the homunculus or mercenary will drop everything to come

to the rescue of the owner/friends/owner’s other mercenary/homunculus if this monster is
attacking them. See the configuration option _RescueOwnerLowHP_ which can effect

rescue behavior depending on owner’s HP.

- RESCUE_NEVER - Do not rescue anything from this monster.
- RESCUE_FRIEND - Rescue friends, but not owner.
- RESCUE_RETAINER - Rescue the owner's other homunculus/mercenary.


- RESCUE_OWNER - Rescue the owner.
- RESCUE_SELF - Drop everything to defend self against this.
- RESCUE_ALL - All of the above except self.

### SP Tactics......................................................................................................................

If this value is set to a positive number, that value will be used instead of

_AttackSkillReserveSP_ when fighting this monster. Otherwise, _AttackSkillReserveSP_ will

be used normally. By setting a higher value for weak monsters, you can keep SP in

reserve for the stronger monsters, without entirely disabling skill use on the weaker ones.

### Snipe Tactics

This tactic allows you to turn off sniping when attacking a particular monster, so

it will be killed faster.

- SNIPE_OK – Snipe other monsters while attacking this monster.
- SNIPE_DISABLE – Do not snipe other monsters while attacking this monster.

### KS Tactics

This tactic determines how polite the homunculus will be fighting this kind of

monster.

- KS_NEVER – Do not attack this monster if it is attacking or being attacked by
    another player.
- KS_POLITE – Do not attack this monster if it is moving, which might indicate
    that it was chasing another player. Works like _DoNotAttackMoving_.
- KS_ALWAYS – Treat this monster as free-for-all, and attack it without regard for
    other players. Warning: Per the iRO terms of service, players are responsible for
    the actions of their homunculus. Accordingly, use of this option on monsters
    which are not FFA may result in temporary suspension of your account and/or
    acts of vigilantism. Use of this option on monsters that are not free-for-all is
    strongly discouraged.

### Weight Tactics

Set this to a positive number (decimals encouraged). The default is 1. In all cases

where monsters are counted for some purpose (ex, determining whether to enter berserk

mode or use mob skills), this monster will be counted as this many monsters. For

example, if I have 2 monsters with a weight of 0.4 attacking me, 1 monster with a weight

of 0.5 attacking me, and another with a weight of 1.2 attacking me, that will be counted
as (2*0.4 + 0.5 + 1.2=) 2.5 monsters.


### Chase Tactics

This option controls whether to move to chase after a target. This behaves
similarly to _DoNotChase_ , only for specific monster types.

- CHASE_NORMAL – Behave as per _DoNotChase_
- CHASE_ALWAYS – Chase this monster, even if _DoNotChase=1_ – this is a good
    choice for a vani in OD2 – set the orc archers to CHASE_ALWAYS, and set
    _DoNotChase=1_ to not chase anything else, so the homunculus doesn’t move (and
    hence not regen sp) unless it has to in order to get to an archer.
- CHASE_NEVER – Do not chase this monster, even if _DoNotChase=0_ – this can
    lead to obvious undesirable behavior, as this does not prevent it from being
    targeted. It is the responsibility of the user to make sure that this is used in a
    manner that doesn’t cause problems.
- CHASE_CLEVER – Wait for an SP regen tick (per _ChaseSPPause_ ) when
    chasing this monster, even if _ChaseSPPause_ is not otherwise enabled.


## Advanced Settings:

These advanced settings are controlled by the Extras configuration.

This extras file is a page of lua code that is imported after all other parts of the AI are

loaded. The included Extras files contain instructions for using them for several advanced
features, and even guidance on using it to expand the AI. See the developer guide for

more details on the facilities available in the Extras configuration.

Three relevant options are included in the default Extras configuration:

**NewAutoFriend** – Uncomment the NewAutoFriend = 0 line if you are using an AI other

than AzzyAI for your mercenary (if this is for the homunculus) or vise versa. If this

option is used, you must summon your mercenary and homunculus, and then relog or

teleport in order to trigger the friending.

**Autofriending** – If you have multiple accounts running on the same computer, and want

their homuns to help each other, friend the players (this should be done by hand, due to

race conditions, since friend list is shared by all homuns running from a specific locations

- but if you insist on doing it through the game, only have one homunculus out at a time

while friending). AzzyAI will attempt to detect their H_ID/M_ID files and automatically
friend their homuns and mercs. To ensure that this behavior works, summon homuns on

all accounts, and then walk the players off screen of each other and back.

**AggressiveAutofriend** – Additional option for Autofriending. This will much more

aggressively synchronize friending between multiple accounts running on one computer -
you do not need to walk off screen, and resummoning homunculus will not confuse it.

This relies on frequently checking H_ID/M_ID files, and may result in poor performance

on slower machines. Set _AggressiveAutofriend_ =1 in H_Extra/M_Extra to enable this

behavior.

**FriendAttack** – In this section, you can configure which motions, on the part of the

owner of a friend, should be interpreted as offensive acts, and hence a cue for the

homunculus to attack the targeted monster. Set them to 1 to treat them as offensive acts.

**BasicDebuffs** – In this section, you can configure which debuffs will be used if debuffs
are enabled, but no specific debuff is specified in Tactics. Set a debuff to 1 to enable use

of it.

**LiveMobID** – If this is enabled, on both mercenary AND homun, both owned by same
player and out simultaneously, the homunculus will record monster ID’s continuously,

while the mercenary loads it. It will be written to the _AggressiveRelogPath,_ because this

will generate a lot of disk activity. Whenever merc and homun are used simultaneously, it

is recommended to enable LagReduction.

**AggressiveRelogTracking** – Uncomment this line to enable much more rigorous

tracking of relog events for tracking of skill durations. This is done by repetitively


writing a file to record when the homunculus is not logged in. This generates a large

amount of disk activity, and may result in performance degradation on some systems.
You can specify where to store this file using AggressiveRelogPath – if you have a

particularly fast storage device, set the path to put the file on that device. The write

activity generated by this is not so great as to cause a problem for a solid state drive, even

when used for an extended period of time.

**Route Walk** – Route walk instructs the mercenary or homunculus to walk along a pre-

defined route. On a mercenary, it is possible to auto-follow the mercenary, and let it drag

you around te map, and on Amistr type homuns, it can be set to use Castling to have it

move you around the map (see _UseCastleRoute_ ). You can also define a “relative route”

(see _RelativeRoute_ ), to provide a custom alternative to the usual options for IdleWalk (for
example, it could be made to follow a heart-shaped pattern).

To enable it, set _UseIdleWalk_ to 5 or 6 (Route_Circle or Route_Linear in the GUI)

To use this feature, you must also define a Route in H_Extra or M_Extra. This consists of
a single line with the following format.

MyRoute={{x1,y1},{x2,y2}, ... {xn,yn}}

These points should be no more than 8 cells distant from each other, and making a route

for a map can be a laborious exercise.

In previous versions of AzzyAI, this was stored in the Route.lua file. It is now stored in

M_Extra.lua, with other advanced feature configuration.

Example – Relative route for heart-shaped idle walk:
UseIdleWalk=6 (Route – Circular)

RelativeRoute=1

MyRoute={{-5,0},{1,4},{3,2},{1,0},{-3,2},{-1,4}}

**Alternate Tactics –** the included (commented out) code serves as an example of
switching between two tactics lists. See the Development documentation for more

information.

**PVP_Tactics:**
The tactics used in PVPmode are stored in (H or M)_PVP_Tactics.lua. They are

edited in the same way as normal tactics, however they are used only against other

players. PVP tactics do not include the SP, Chase, Weight or KS tactics, because those

are not appropriate options for PVP. There are two ways to mark players.

- Add a tactic to PVP_Tactics using the player’s account id number (from
    ROPD), and configure appropriately.
- Add a line to A_Friends.lua for that player including one of the key words
    KOS, ENEMY, NEUTRAL, FRIEND or ALLY, and configure the
    PVP_Tactics for those classes of target, eg:


MyFriends[1234567]=ALLY

**Expanded logging:**
In addition to the built-in TraceAI logging, AzzyAI can keep several additional

logs to record activity around general or specific events. These can be enabled by setting

the _LogEnable_ options in H_Extra/M_Extra to 1. Logged data is saved in the RO folder,

in files named for that option, for example, the error log is saved in _AAI_ERROR.log_. Log
rotation is not performed – this can result in very large log files, particularly if

SKILLFAIL and CLOSER logging are enabled.

- LogEnable[“AAI_ERROR”] – Record error conditions. This is enabled by
    default. Contact support if you are getting a large number of messages recorded in
    AAI_ERROR.
- LogEnable[“AAI_SKILLFAIL”] – Record events involved with skill failure
    detection and recasting. This should be enabled when investigating issues
    involving skills being recast excessively, or interrupted skill casts not being
    recognized as such.
- LogEnable[“AAI_CLOSER”] – Record the behavior of the Closer() function,
    which is used very frequently within the AI, and has often been involved in
    problems in the past.
- LogEnable[“AAI_DANCE”] – Record the cells moved to and from when
    _UseDanceAttack_ is enabled.
- LogEnable[“AAI_LAG”] – Record lag reduction actions taken when
    _LagReduction_ is enabled.
- LogEnable[“AAI_ACTORS”] – Record all actors seen, their location, and their
    type IDs. This will produce huge log files very quickly on busy maps
    (>1MB/minute) and may result in client crashes due to the volume of data being
    recorded. Be prepared for this when using this logging option. This is intended for
    use when you need to find out the ID of a monster or player.


## Version History.................................................................................................................

##### 1.55

- ChaseSPPause, UseDieterLavaSlide/UseSeraPoisonMist message in GUI.
- Add UseDieterVolcanicAsh and associated tactics options to GUI.
- Add UseSmartBulwark to GUI - for some reason it was missing.
- Add support for using Volcanic Ash as a debuff.
- LagReduction can now be set to values higher than 1, this further slows homun responses, in an
    effort to reduce homun-lag on busy zone servers.
- New logging option to log all actions of lag reduction mode in H_Extra and M_Extra.
- Change default LavaSlideMode and PoisonMistMode to 1 (Idle) by popular demand.
- Improve logging for config errors.
- Disable painkiller if sera doesn't have poison mist, since it can't have painkiller. It will
- still log complaint in AAIStartH.
- Handle case where owner is surrounded by monsters so painkiller is impossible.
- Improved logging in PROVOKE_ST
- Correct issue with skill selection where tact_skillclass is set to a combo or grappler option.
- Correct issue with grappler combos not working at all.
- Correct issue with sphere counting.
- Correct issue with AoEFixedLevel not being applied due to a typo.
- Added missing timeout globals to Const_.lua
**1.541**
- Correct client crash issue.
- Tighten limit on movement to 14 cell from owner instead of 15.
**1.54**
- Reorganize Standpoint to simplify code and give us a place to check for occupied cells
- Record occupied cells in AI() data gathering.
- Check and correct for occupied cells on clients using Lua 5.1 only.
- AI no longer uses monster location as "last resort" for chasing, as this no longer works.
- New measures to prevent unwanted behavior from AttackTimeLimit
- Corrected two issues that resulted in spurious errors being logged.
- AoEMaximizeTargets is now checked for skills other than brandish spear and focused arrow strike.
- Corrected issue with debuffs obeying attack vs chasing tactic option.
- Added AttackDebuffWhenAttacked option - if set, debuffs set to be used while attacking are only
used if the monster is attacking the homun or owner.
- Corrected issue where skills could be erroneously determined to have failed, resulting in
multicasting certain skills. This is not a perfect fix, but it should improve the matter.
- Specific changes to painkiller to address issues with the cast time of that skill not matching
expected values.
- Corrected issue with monsters set React (Self) being attacked when they were attacking
owner/friends, not just homun.
- Corrected error when using ATTACK_LAST and AttackLastFullSP options
- Corrected issue with AoEMaximizeTargets counting targets set to 'ignore'
- Corrected range of spear mecenary skills and normal attacks to 2, Dec Agi to 9, Lex Div to 5.
- Corrected range and target mode of mercenary recovery skills.
- Added improved logging to Attack State
- Corrected issue with manually commanding merc to use ground targeted skills.
- Corrected cooldown of bloodlust. Added 10 sec grace time to bloodlust and mental charge to
prevent it from missing the recast.
- Reworked obstacle avoiding and poslag detection.
- Documented AttackLastFullSP
- Add DoNotAttackMoving, LiveMobID to GUI


- Clarify AttackTimeLimit description
- New icon by Kami Kali.

##### 1.53

- The case where the homun is in move command state but the location to move to is off screen or
    invalid is now recognized and the movement command is ignored. Previously, the homun would
    hang in this state.
- UseSmartBulwark will now check ALL buff skills, and make sure you'll have enough SP for a full
    suite of buffs after casting bulwark. Note that you will want to also set ReserveSP if you want it to
    ever cast bulwark, otherwise it could keep it's SP below this threshold by casting attack skills, and
    it would never use bulwark
- Added LiveMobID option, under H_Extra and M_Extra. This allows MobID to be auto-generated
    as long as both homun and merc are present, with the homun "spotting" for the mercenary. Like
    AggressiveRelogTracking, this involves a lot of disk activity, and may produce poor performance
    if used on a system with a slow hard drive.
- Merc AI will no longer crash if no Mob_ID.lua file is present.
- Mob_ID file no longer requires array definition at start of file (MobID={}).
- Corrected issue that could lead to double-casting of lava slide.
- Cleaned up logic around skill fail detection to prevent potential bad things.
- Improvements to the use of V_POSITION_APPLY_SKILLATTACKRANGE, it is hoped that these
    will correct some emergent issues in 1.52 related to use of the new API calls; it will now be
    ignored:
       o If it tells us to move to the location of the target to use a normal attack.
       o If alt ~= nil, indicating trouble moving to the target - we will now assume it's having
          trouble because we’re getting bad target cells.
       o If it tells us to move to the location of the target and it's a player (this is doomed to fail)
**1.521**
- Corrected issue with 1 range skills being used on players. This was particularly relevant with
painkiller, rendering the autocast useless.

**1.52**

- If we see lua version 5.1.x we do the following differently;
    o Use builtin method to find stand point, unless doing motion prediction.
    o Use V_SKILLATTACKRANGE_LEVEL as fallback if we face a skill we don't know
       the range for.
- Fixed rarely encountered issue with Tanking which reduced responsiveness.
- Added kludgy workaround to deal with the bathory in eden group. This will cause bathories in
    MOTION_STAND at 174,33 to be ignored.
- AAI_ACTOR logging no longer hangs the client
- Add support for using Silent Breeze to heal owner, now that it's possible the owner could be
    immune to it's silence effect. Enable with HealOwnerBreeze
- IdleWalk should be more fluid.
- If we can't write the startup log, we now throw an error that describes the problem.
- Improved coverage of Poison Mist when PoisonMistMode~=0
- We now default to PoisonMistMode=1
- Cleaned up AttackRange and related functions to take advantage of new functionality and remove
    dead code
- Added formatval() utility function for plugin developers, which will convert any value into
    something safe to concatenate into a string, and enclose strings in single-quotes. Meant for
    logging, where you want to get the logging message when some value you're logging is nil (the
    exact case where you want to know all you can!), not a "concatenate nil value" error message.
- Added HealOwnerBreeze to GUI
- Documented LagReduction


##### 1.51

- Fix issue with Amistr Bulwark
- Issues with not attacking when at exactly 0 sp fixed
- Fix sevral issues with GUI not saving options correctly.
- Clarify GUI messages about MOB_ID
- Corrected issue with PVP tactics in GUI
- Fix issue with Berserk Mode feature not working.
- No longer attack clones produced by the Illusion: Shadow skill by default
- Fixed issue where homun would fail to return to owner when UseIdleWalk was enabled, but homun
    was not eligible for using idlewalk due to low HP/SP.
- Integrated twRO lag mod as new option: LagReduction - Set to true (1) if you encounter lag with
    homun out. Setting this to true will reduce responsiveness of the homun, however. You may want
    to enable this only while using homun on particularly heavily loaded maps.
- New Feature: REACT_ tactics to use attack or defense skills in response to monster casting on you.
- Fixed issues with OnSKILL_AREA_CMD_ST() which would be relevant if the devs ever fixed
    ground targeted skills to call SKILL_AREA_CMD instead of acting as though the player was
    using the skill (which causes the casts to often fail or cause the player to move, because it's trying
    to get the player in range instead of the homun).
- Added DoSkillHandleMode() function to developer API. This is called when a skill is used by
    DoSkill() when DoSkill() has been passed a negative argument for mode. This allows you to
    handle this case. It is passed all arguments that DoSkill() is called with.
- Added OnFailUnknownMode(mode) function to developer API. This is called when the AI thinks a
    skill has failed, and the mode is a positive value, but is not known to AzzyAI.
- UseAutoMag and UseBayeriSteinWand now work with options other than idle.
- UseAutoMag can now be set to the normal buff options
- Added support for new LagReduction option in GUI.
- Fixed issue where homunculi were terrible at detecting successful skill casts.
- Situation where buff timeouts are set to clearly bogus values now handled better for old buffs (we
    immediately attempt a recast, like we do for homun buffs, instead of waiting 300 seconds)

**1.50 Final**

- Fix issue with Amistr Bulwark
- Fix issue with timeout of mental charge getting reset
- Corrected issue with skill fail detection on mercenaries; they do not have the distinct tell that
    homuns do in event of successful cast.
- Corrected issue with spurious error log entries regarding skill info type 3 on skill 0 level 0.
- Add tactics to enable use of attack skills AND summon legion against a target.
- Corrected issue with obstacle handling and dance attack doing a bad job of selecting cells.
- For LavaSlideMode/PoisonMistMode = 3 (ASAP), if we're having trouble moving into range, we'll
    call the built in MoveToOwner().
- For Painkiller owner, for buffmode 3 (ASAP), if we're having trouble moving into range, try the
    usual ways to get close to owner (since MoveToOwner only gets homunculus into 2 cells of
    owner, not close enough).
- For buffmode 3 (ASAP) on targeted skills, we will no longer get stuck in a loop if unable to buff.
    Failed attempts will be retried in 20 seconds.
- Corrected missing 'local' keyword in several helper functions in AzzyUtil, removed some dead
    code.
- Improved logging around Closest() function.
- Corrected default SeraCallLegionLevel to 5, instead of 0 which disabled use of the skill.
- Corrected bugged bug detector for Call Legion to be less hasty to assume that the bugs are bugged,
    when they're still active and standing ready to assist their master.
- We will start trying to recast painkiller 1 second earlier now, since some people will rely on this
    staying up 100% of the time.


- Corrected issue where use of painkiller on other players via PainkillerFriends would be done at the
    wrong time, depending on UseSeraPainkiller. This would cause ASAP loops when
    UseSeraPainkiller was set to 3 (ASAP).
- Corrected issue where circular routes could not be used with Castling (there may still be other
    issues with Castling Route to be corrected in a future version)
- Corrected issue where route walk would produce "attempt to concatenate global 'distance' (a nil
    value)" errors while the homunculus was standing on one of the cells in the route (including while
    loading, because the default route has step 0,0 and that is sometimes returned for
    GetV(V_POSITION) right after loading.
- When SuperPassive=1, commanding homunculus to use a skill on a monster will no longer cause
    the homunculus to begin attacking that monster with normal attacks or other skills.
- Corrected issue with new skill tactics not being handled while chasing
- Corrected issue with AoEFixedLevel not being honored while chasing
- Corrected issue with UseHomunSSkillAttack and UseHomunSSkillChase not being honored in all
    cases.
- Tightened code involved in skill failure detection to hopefully do a better job of dealing with the
    inconsistent responses of the server and/or API.
- Corrected issue with incorrect prioritization during opportunistic target changing.
- Fixed issue where error could appear when SuperPassive=1 and homunculus was being ordered to
    attack manually.
- Added LogEnable options to H_Extra/M_Extra, added more logging options.
- Corrected issue where sniping would not respect TACT_SKILLCLASS when using less common
    skill class tactics.
- Expanded logging around error condition after manually commanding homunculus to use a skill.
- Corrected rare issue where opportunistic targeting or rescue could confuse predictive motion and
    generate errors or lead to erratic chasing movements.
- UseAvoid will not kill the client until 5 seconds have passed since summoning homunculus -
    disconnecting during this time will not immediately remove the character in game, so it won't do
    any good.
- Corrected issue with merc+homun autofriend
- Corrected issue with dance attack bypassing UseSkillOnly
- Attack() being called in superpassive is no longer logged as error; it is not an error, the owner can
    manually command homun to attack.
- Corrected issue where homun could become stuck when commanded to use a skill on an actor
    which subsequently moves offscreen.
- Added support for Isis monster mercenary.
- Corrected issue with monster mercenaries not correctly closing to melee range.

GUI:

- Add support for new tactics
- Corrected multiple issues with the SKILL_CLASS tactic option for mercenaries - for mercenary,
    only two values are valid - CLASS_BOTH and CLASS_MOB.
- SeraCallLegionLevel can nolonger be set to invalid values like 0.
- Clarified and corrected descriptions of AggroDist and MoveBounds options. Confusion over the
    difference between FollowStayBack and MoveBounds has been responsible for several spurious
    bug reports.
- Corrected issue with UseEiraSilentBreeze and EiraSilentBreezeLevel.
- Corrected issue with saving certain buff related tactics.
- Corrected issue with saving AutoMobCount
- Configuration Tool now forces itself to run as admin, just like the RO client. This should fix issues
    where the AI would load, but settings changes in the config tool would be ignored.
- Corrected issue with loading AutoMobCount

Doc:


- Docs updated

**1.50 dev 17.1**

- Fixed issue with CHASE_NEVER tactic.

**1.50 dev 17**

- Fixed issue with Silent Breeze debuff tactic not being recognized.
- Corrected issue where Silent Breeze skill would not be recognized on Eira.
- Corrected issue with GetTact() handling of invalid tactics behaving incorrectly.
- Spurrious error messages are no longer recorded when homunculus is summoned.
- Corrected issue with several Eira skills.

GUI:

- Added option for UseEiraSilentBreeze, EiraSilentBreezeLevel

**1.50 dev 16**

- Fixed two critical issues with dev 15.

**1.50 dev 15**

- Failed cast detection completely reworked, now based on a characteristic delay in AI() calls while
    the homunculus does the cast animation.
- Added EleanorDoNotSwitchMode option. When this is enabled, all eleanor mode switching must
    be done manually; we will always assume we are in the right mode. This was requested by
    Meoryou2.
- We now log the most recent time that the configuration tool has been used to modify the config file.
- Added racooons to the default tactics to ignore.
- Corrected issue with default configuration enabling ChaseSPPause by default
- We detect when someone has modified the AI to use the ranged pierce exploit and write a warning
    to AAIStartM.txt (assuming the modification was done in the obvious manner). AzzyAI does not
    condone the use of this exploit, and it may be prohibited on the RO that you play.
- Global variables moved to Const_.lua, this will make the code easier for me to manage.
- When StickyStandby and DefendStandby are both enabled, homunculus will not attack targets
    aggressively if the owner attacks a monster with a lower priority.
- Corrected issue where an Eleanor might use combo attacks when skill_class tactic was set to
    minions (ie, sera's summon swarm).
- Added new grapple tactics.
- Corrected skill data to include Tinderbreaker cast time.
- DanceMinSP will not be checked when dancing due to being in berserk mode.
- Corrected issue with UseEiraOveredBoost
- Corrected spelling of Eira related options
- Corrected issue where low level vani with less than 30 max SP would not autocast caprice. It will
    now cast the highest level of caprice it can with it's current max SP.
- When we fail at moving into range to use Painkiller, or cast lavaslide or poison mist under the
    owner, we now take more aggressive actions.

GUI:

- ASAP option removed for auto-mist and auto-lava slide. There are issues that could occur when this
    option was used which could result in a hung situation.
- Added support for EleanorDoNotSwitchMode options
- Now records the date that start file was saved on to assist in debugging.
- StickyStandby = 2 now supported, this will save standby status through teleport/mapchange/relog.
- Added support for new grapple tactics
- Corrected spelling of Eira related options


**1.50 dev 14**

- Added PainkillerFriends option, if set to 1, will try to keep painkiller up on all friended players.
    Additionally, if a player is manually targeted with painkiller, they will be added to the list of
    players to Painkiller. If PainkillerFriendsSave option is 1, these lists will be recorded, otherwise,
    they will only last until the next resummon.
- Corrected incorrect SKILLCLASS tactic in default H_Tactics.lua
- Success of casting targeted buff skills was not being checked. This has been fixed.
- Corrected issue where failure to use some skills would result in the AI crashing
- Corrected issue where failed skill use was not treated appropriately.
- Corrected issue with default mercenary configuration in M_Config.lua
- Added OnAIEnd() callback to enable support for twRO-mod without losing stack space.

GUI:

- Added support for PainkillerFriends related options.

**1.50 dev 13**

- Fixed line 3135 error

**1.50 dev 12**

- Fixed issue with Eleanor mode switching
- Fixed issue with non-human-readable date/time in AAIStart file
- Enabled default/customized file detection in AAIStart file
- Added version checking to AAIStart file
- Improved handling of missing data folder; this will now log errors instead of crashing, and will also
    log to AAIStart.
- If you have two accounts logged in at once on the same computer from the same RO installation,
    AND they are friended with eachother, they will autofriend eachothers homunculi and
    mercenaries.

GUI:

- Added IdleWalkSP option
- Fixed issue with GUI crash when working with tactics
- Fixed issue where "once, level:" option could be set for mercenaries; mercenary skills are not level-
    selectable.
- Clarified description of LavaSlideMode and PoisonMistMode, corrected copy/paste error.
- Options relating to Painkiller now shown under autobuff options.

**1.50 dev 11**

- Added support for Pengineer mercenaries
- Improved mercenary identification.
- Resolved issue with counting monsters for AoEMaximizeTargets that also spammed the error log.

**1.50 dev 10**

- Corrected issue with default SeraCallLegionLevel, RestXOff and RestYOff values
- Trapped and handled obstacle handling issue in following state.
- Trapped and corrected several obstacle handling issues, including the one encountered at the
    enterance to anthell.
- Fixed spurrious log messages in PVPmode.
- Fixed issue with enabling PVPmode.
- Fixed issue with spurrious error messages when using a Sera homunculus.
- Fixed issue with IdleWalk logging errors when starting IdleWalk routines.
- Added IdleWalkSP option. Set this to the SP (as a %) above which IdleWalk will be enabled.
- Fixed issue with level 5 of Caprice not being used.
- Added verbose chase mode logging to facilitate debugging of likely issues with the new obstacle


```
handling.
```
- Logs to AAI_ERROR and similar are now recorded in AI traces.
- Removed spurrious AAI_ATK log file.
- Corrected issue with document size bloat

**1.50 dev 9**

- Corrected issue with StickyMove referring to a function I never wrote.
- Corrected issue with Summon Legion producing errors.
- Spelling errors in constant file fixed.
- ProvokeOwnerMobbed changed to DefensiveBuffOwnerMobbed, and now effects Kyrie not
    Provoke for mercenaries.
- ProvokeOwnerHP changed to DefensiveBuffOwnerHP, and now effects Kyrie, not Provoke for
    mercenaries.
- Painkiller use now controlled by new option UseSeraPainkiller.
- Added options to use the new GM mercenary skills
- Improved forward compatibility with future skills. Manual use will now not throw errors.
- Added support for new GM mercenaries.
- Corrected potential infinite loop scenario with skills set to be used "ASAP"
- Corrected issue where route walk caused errors.
- Corrected issue where IdleWalk did not correctly calculate the relative positions of homunculus and
    owner.
- Corrected issue where square IdleWalk pattern did not correctly deal with the top left corner.
- Corrected issue where random IdleWalk pattern did not correctly calculate destinations.
- Corrected issue where IdleWalk would become confused if the homunculus paused en route.
- Corrected several issues involving route walk.

GUI:

- Updated GUI to be compatible with systems running with non-US localization
- Updated GUI to include descriptions of kiting parameters.
- Updated GUI to perform data validation on most numerical options
- Corrected issue with skill tactics in GUI
- Updated GUI to account for new and renamed options related to buffs
- Corrected issue with the GUI blanking M_Extra.lua
- Corrected several typos and option categorization issues.

**1.50 dev 8:**

- Updated AI to be compatible with clients running LUA 5.1 (such as fRO)

**1.50 dev 7:**

- Urgent Escape is now a defensive buff, not an offensive one
- Added support for using Mental Charge as an offensive buff for Lif type homunculi (not that you'd
    probably want to use it).
- Updated documentation to reflect recent changes.
- Updated documentation regarding installation procedure.

GUI:

- Added support for CLASS_MINION for the skill class tactic.

**1.50 dev 6** :

- Corrected issue with defensive buffs not working correctly when set to be used at times other than
    while idle.
- Corrected issue where homunculus could end up in endless loop after unsuccessfully attempting to


```
provoke or painkiller owner
```
- Corrected issue where the AI would crash sometimes when attempting to use painkiller on owner.

GUI:

- Corrected issue with a crash while creating new tactics.
- Corrected issue where AttackTimeLimit and AggroHP were confused, resulting in bogus settings
    being saved and causing the homunculus to abandon targets inappropriately.

**1.50 dev 5:**

- Fixed issue with missing PVP tactics files.
- Fixed error encountered with Sera homunculus S.
- Added "as soon as possible" option to all buffs. Set the option to 3 to enable.
- Renamed UseAutoQuicken to UseOffensiveBuff.
- Renamed UseAutoGuard to UseDefensiveBuff.
- Renamed ReserveAoESP to AoEReserveSP.
- Renamed MobSkillFixedLevel to AoEFixedLevel.
- Renamed UseSmartAoE to AoEMaximizeTargets
- Renamed UseAutoSkill_MinSP to AttackSkillReserveSP
- Renamed UseAutoSkill to UseAttackSkill
- Renamed UseCleverChase to ChaseSPPause
- Renamed CleverChaseSP to ChaseSPPauseSP
- Renamed CleverChaseTime to ChaseSPPauseTime
- Added AttackTimeLimit option - time, in milliseconds, to attack something before deciding that
    you're not actually attacking it and mark it unreachable.

GUI:

- Added new config options, applied above renaming.
- Added support for new tactics options.
- Added support for independent homunculus and mercenary PVP tactics.
- Corrected issue where extras files were not properly saved.
- Corrected issue where PVP tactics were not saved.

**1.50 dev 4:**

- Added support for CLASS_MINION skill class tactic - if this is set as skill tactic, Sera will use Call
    Legion on this class of monster
- UseSmartAOE now supports all skills (except brandish is still done approximately)
- Clever chase now prevents normal following too
- Other changes and fixes - changelog file got reverted at some point.
- Added basic PVP support

**1.50 dev 3**

- Fixed issue with TACT_IGNORE and TACT_TANKMOB not working as advertised or intended.
- Fixed multiple issues with CleverChase
- Added CHASE_CLEVER tactic; This is probably the correct way to use CleverChase. Monsters
    with the chase tactic set to CHASE_CLEVER will use CleverChase even if CleverChase is
    otherwise turned off. They will still observe CleverChaseSP and CleverChaseTime
- Fixed issue with Sera skill, Painkiller being spammed when it shouldn't.
- Added tracking for the status of Sera's Legion (the rest of this functionality isn't done yet)
- Added ProvokeOwnerMobbed option - If owner is below 90% hp, and has at least this many
    monsters on him, THEN use provoke (ie, painkiller) on them. This way you can use it on a fragile
    genetic without wasting time casting it when he's safe and healthy.
- Added a few options for stonewalling as a bayeri (Stien Wand that is. "Stien wand" is german for


```
"stone wall")
```
**1.50 dev 2**

- Slimmed down documentation file size.
- Fixed error when using all mercenaries.
- Fixed error when using mercenaries with level 2 or higher of the skill Crash.
- Fixed issue with ReserveAoESP not working at all
- Fixed issue with ReserveAoESP not working for chase skills
- Fixed issue with ReserveAoESP not working for AoE-as-buff mode.
- Fixed issue with AOE-as-buff mode not working at all.
- Missing fix for Dieter skills (from 1.40 dev 20) replaced.
- Fixed issue with AOE-as-buff mode failing to account for skills having a finite range.
- Fixed AutoMobMode=2 to correctly count only aggro monsters.
- We no longer count dead or dying monsters when deciding whether to use an AoE. This should
    correct the long-standing behavior where a homunculus deals the dying blow to 1 monster as
    another monster arrives, and then (with AutoMobCount=2) uses it's AoE attack on them.
- Provoke only worked with mode 1 (during idle state). Now it works all the time.

**1.50 dev 1 - Initial 1.50 release**

- Added SP, Weight, Chase, and Snipe tactics.
- Added support for use of castling.
- Replaced old system for idle walking motions
- Added option to use AoE skills like buffs on the owner.
- Added SP and skill failure watcher
- Added clever chase
- Implemented use of combo skills
- Added new basic tactics
- Added low priority heal option
- Added option for buffing at times other than in idle state.
- Improved support for multiple homuns
- Added option for aggressive tracking of relogs
- Treasure Boxes are now ignored by default as a fail-safe.
- Snipe will not be used if it should be using an AoE skill
- Added opportunistic target changes
- Added DanceMinSP option
- Various other changes and additions

**1.41**

- Fixed critical issue with mercenary AoE skills introduced by 1.40 dev 19
- Fixed issue with UseSmartAOE when used with FAS which can cause the mercenary to incorrectly
    select targets with FAS when handling targets to the northwest or southeast of the mercenary.
- The area of Brandish Spear is calculated incorrectly for comparison to UseAutoMobCount. This
    will be fixed in 1.50 as the framework planned for this is not ready.
- Corrected improper use of FAS when there were not enough monsters on screen.
- Corrected issue with FAS target counting of monsters in the four cardinal directions being 2 cells
    narrower in the vertical direction (this meant that the area it was counting for east/west direction
    was only 1 cell wide).
- Corrected issue with FAS target counting of monsters in the diagonal directions always counting
    zero monsters.
- Corrected issue with mercenaries failing to correctly use debuff skills
- Corrected AutoMobCount to 2 in default mercenary settings.

**1.40 Final**


- Padded skill delays to reduce the liklihood of the AI trying to recast skills before the cooldown is up
    due to lag, flywings, etc. This is 5 seconds for bloodlust, 1-1.5 for flitting/accel flight - so you can
    still make it bug by winging around alot - or of course if you log out or manually cast the skill -
    but this should help significantly
- Padded lava slide and a few other skills with a short delay, because my tests indicate that they seem
    to have one, and we were trying to cast other skills during that delay and failing.
- AI will not let you cast SBR 44 manually, unless you set AllowSBR44=1 in H_Extra. Misclick
    insurance. Unfortunately, I can't do the same for self destruct
- Minor internal changes backported from 1.50

```
1.40 dev 23 3/28/2012
```
- Fixed MobSkillFixedLevel option
- RESCUE_ALL will now rescue if the target is friend or owner, but not if target is self. This makes a
    lot more sense.
- Fixed issue with failing to use autobuffs on homunculi with more than one buff with a non-zero cast
    time and delay, due to failure to check delay status.
- Corrected default H_Tactics to use basic tactic ATTACK_M instead of REACT_M, an error
    introduced by poor source control in dev 21 and 22.
- Improved logging around autobuff and healing skills.
- Added function to improve human readability of skill-usage logging in future updates.

```
1.40 dev 22 3/27/2011
```
- Fixed issue with Chaotic Blessings and Healing Hands not correctly using cooldown.
- Fixed issue in which UseAutoSkill_MinSP would be ignored if Berserk_IgnoreMinSP (defaults to
    1) was enabled, even when the AI wasn't in berserk mode.
- Cleaned up SP checking, much easier to read and work on now
- Cleaned up attack state logging.
- New option for homuns: MobSkillFixedLevel - if set to 1, always use the level set via
    (homuntype)(skill)Level option (ex, DieterLavaSlideLevel)) for antimob skills, ignoring tactics
    stating otherwise. Defaults to 1. I've been seeing lots of people using lvl 1~4 of lava slide in OD2,
    and i'm pretty sure it's because they wanted to use lvl 1~4 of the bolt skills, but level 5 of lava
    slide.
- Fixed issue with commanding homunculus to use skills not behaving as expected.
- Fixed issue with UseSkillOnly mode not correctly using attack ranges
- Fixed issue with Sera skill Poison Mist not properly using cooldown
- Fixed major issue with incorrectly estimating casting times.
- Fixed issue with incorrectly calculating cooldown options
- Added cooldown on Lava Slide ("what? you didn't have one already?" you say? See last point).
- Improved logging around skill cooldowns.

**1.40 dev 21 – 3/26/2012**

- Fixed issue with sniping
- Fixed issue with tanking

**1.40 dev 20 – 3/20/2012**

- Fixed issue with Dieter selfbuff skills
- Added OnInit() call, for players to handle multiple homunculus AI configurations.
- Added protection for file conflict issue when using multiple homuns at once - will now fail
    gracefully.
- AoE skill count no longer counts killsteals as targets when deciding whether to cast an AoE
- Sonic claw delay is back, because the GMs added a short delay on it
- Added UseSmartBulwark option.


**1.40 dev 19 – 3/15/2012**

- Sonic claw will be spammed faster now
- Fixed issue with movement destination selection. This will fix issue with choosing non-optimal
    cells to move to, and prevent a hang possible under unusual conditions.
- Corrected issue with monster counting function.
- Corrected anti-mob skills to count the monsters within the AoE instead of the monsters currently
    near the homunculus.
- Fixed timing for Sera's Poison Mist skill
- Internal stability improvements
- Added improved tracing for issue with failure to call AI()
- Improved reporting of serious error conditions. Please delete all AAI*.log files in your RO folder.
- Improved reporting of time in AAIStartH/AAIStartM files.

**1.40 dev 18**

- Deactivate dance attack near edges of screen. This will prevent an obstacle-slide effect from
    pushing homunculus off screen.

**1.40 dev 17**

- Corrected bloodlust support
- Improved behavior when chasing moving targets - if you're faster, you'll catch it now.
- Fixed issue with loop at edges of screen

**1.40 dev 16**

- Corrected issue with improper default values contributing to improperly dropped targets.
- Improved system for chasing blocked targets.
- Improved catches for rescue loops.
- Possible improvement in dance attack
- Improved logging around chasing and movement.

**1.40 dev 15**

- Independent cooldown timers for Moonlight, Caprice, Chaotic Blessing, and Healing Hands. I
    have not tested this with a homunculus with more than 1 attack skill since I don't have any yet, so
    try it out and see if it works.
- Added improved logging to try to nail down a freeze bug.
- Support Bloodlust Autocast

**1.40 dev 14**

- Fixed critical issue that lead to homunculus running off screen.
- Fixed issue where fix for archers introduced with dev 7 was not applied when homunculus HP was
    above AggroHP
- Minor responsiveness tweaks.
- Fixed more improper tail calls.
- Fixed a number of cases where responsiveness measures were being used improperly, forcing me
    to use more conservative settings for the responsiveness measures. This has been corrected. (this
    will be tested with more aggressive settings, and these will be included in the next version if they
    do not adversely affect stability).
- Fixed issue with improperly dropped targets
- Fixed issue with follow state in strongly adverse conditions.
- Fixed issue with spurious warnings in AAI_Warning.log - changes introduced in dev 9 had led to
    warnings being produced under normal circumstance.

**1.40 dev 13**


- Fixed issue with moving long distances.
- Improved chasing behavior, should fix the wobble.
- Improved boundary detection while chasing.
- Fixed issue with SP being counted incorrectly when using skill levels other than max level
- Fixed issue a distance function in AzzyUtil.lua (no reported issues in the field).
- Fixed issue with occasional target dropping while closing to melee range.
- Fixed numerous serious bugs with skill while chasing.

**1.40 dev 12**

- Fixed critical issue with sniping tactic.

**1.40 dev 11**

- Fixed issue with provoke state.
- Fixed issue with provoke skill info.
- Fixed issue with AI mistaking sacrifice for provoke
- Three above issues combined to cause crashes on homuns with sacrifice when autoprovoke was
    enabled.

**1.40 Dev 10**

- Fixed issue where we attempted to use math.huge which isn't implemented in lua 5.0.2
- Fixed issue where chase state tried to move to a target one last time after dropping it's old target.
- Fixed line 667 error, which was caused by the combination of the two above bugs.
- Corrected error where stationary aggrodist and movebound would be used if the owner was
    moving only in the north-south direction.
- Improved logging for the closest cell calculations, because they're brittle and cause a lot of
    problems.
- Corrected issue with ranged mercenaries moving 1 cell closer than they need to when approaching
    targets from the west and south.

**1.40 Dev 9**

- Removed posbug correction code - was causing dropped targets, inappropriate dancing, and other
    issues because it is impossible to detect posbug due to GetV() bug, and hence was activating even
    when not posbugged.
- Fixed issue with Sniping - TACT_SNIPE_L/M/H should now work. If you can 1-shot in OD2, try
    it out! Makes much better use of SP.
- Fixed issue that could cause a high-speed homunculus to run off the screen chasing a monster. We
    will now drop the target instead. This was killing people in OD2.
- Fixed improper tail call from chase to idle.
- Default tactics are now a bit better: They default to not attacking the stupid event mobs, nor ants
    and giearths for doing ant eggs.
- Set DoNotAttackMoving in H_Extra to make the homunculus not attack stuff that's moving. It'll
    still continue chasing them if they do move, though. This is not the final version of this feature,
    but it's been requested by several people - here's an interim solution.

**1.40 Dev 8**

- Quick bugfix release
- Fixed follow obstacle fix from previous versions as it was not being used correctly
- Fixed attack posbug fix, which was suffering from an almost identical issue
- Fixed missing geographer tactic.

**1.40 Dev 7x**

- Fixed the attack chase loop bug.


**1.40 Dev 7**

- Added support for autoskill skill selection tactic - Manually edit H_Tactics.lua and chance the size
    tactic to CLASS_BOTH (to use either pre-S or homunS skills), CLASS_OLD (for pre-s skill
    only), or CLASS_S (for S skills only), or CLASS_MOB (if, for some reason, you want to use a
    mob skill on this, even if there aren't enough targets around to normally justify using a mob attack
    (per MobAttackCount) - i expect this to be most useful for mercenaries, particularly the lvl 10
    sword mercenary, where you might want it to use BB for the higher damage - of course tactics for
    mercs require MobID - so maybe this isn't so useful.) For mercenaries, you can edit this using the
    GUI - use the TACT_SIZE tactic, SIZE_LARGE is the same as CLASS_MOB,
    SIZE_UNDEFINED should be used in all other cases (since there's no S-class skills for
    mercenary)
- Unified code between chase skill use and attack skill use
- Fixed longstanding issue with debuff while attacking which would prevent the homunculus from
    using debuffs while attacking if told via tactics to use a certain debuff skill. This bug has been
    present since 1.30 or earlier and had not been reported. Did anyone try to use this?
- Corrected boneheaded prioritization of targets which resulted in the homunculus aggroing new
    monsters while ignoring monsters currently attacking him. This was a really really nasty bug IMO.
- FOLLOW_ST with FAST CHANGE did not use proper tail call when changing to IDLE_ST, this
    was corrected (internal change)
- Removed more obsolete code
- Fixed a few potential error message
- Fixed issue with empty AAI_Warning file
- Fixed error with bow mercenaries that have the skill Double Strafe
- Another change dedicated to truly eradicate the follow state hang.
- Fixed issue with inappropriate use of antiposbug measures which could cause problems around
    obstacles.
- Fixed issue where the wrong measure of range was compared to MoveBounds for attacking
    monsters outside AggroDist, resulting in failure to defend against ranged attackers (like those
    blasted orc archers!) on the edges of the screen.
- Improved tracing to try to trace down yet another freeze issue.

**1.40 Dev 6x2, 6x3**

- Fixed issues in M_SkillList.lua

**1.40 Dev 6x1**

- Fixed missing config program and fixed an issue in M_SkillList.lua

**1.40 Dev 6**

- Corrected issue with AttackRange() leading to homuns not closing to 1 cell range, resulting in
    Filirs and Eleanors not closing to skill range
- Corrected issue with MotionClasses resulting in monsters currently targeting the owner not being
    correctly given priority
- Follow state no longer attempts to move to the owner's location; That doesn't work anymore.
    Follow state will now move to 1 cell range if it can't move to distance specified in
    FollowStayBack for ~500ms, and after another ~500ms it will use MoveToOwner() builtin.
- Corrected issue where follow behavior did not return to normal if the homunculus was interrupted
    while in follow state. Combined with above, homunculus could hang in freeze state until
    vap/recalled.
- M_SkillList.lua now loads.
- Accellerated Flight now works. It is classified as a defensive skill (turn on UseAutoGuard to use
    it).
- Obsolete code removed from AzzyUtil


- Pierce size removed. This variable and tactic will be removed or repurposed in a future release.
- Added AoE info to the skill info database - this is not currently used.
- Added additional AI tracing.
- Removed unneeded files accidentally included in previous packages

**1.40 Dev 5**

- HUGE internal overhaul of skill selection
- Fix for issue with manually commanding homunculus to use skills
- Fix for random error caused by new aggrodist/movebounds
- Fix for incorrect Stahl Horn range
- Closer to support for new buff skills
- Fix for vibrating homunculus when sitting issue.
- Support for homunculus S buff skills

**1.40 Dev 3**

- Fixed issue with dance attack
- Fixed issue with chase targeting
- Fixed issue with sniping activating incorrectly
- Fixed issue that may have been triggering freezes (sending invalid move commands)
- Fixed issue with poor handling of ranged monsters near edge of screen. See the two new
    AggroDist values in H_Extra
- Added support for Sera autocasting painkiller on you (set UseOwnerProvoke=1 in H_Extra to
    enable!)
- Added support for vani's healing themselves ( turn on UseAutoHeal and it will kick in
    automatically. Control the %hp that it will activate at with HealHomunHP in H_Extra)
- Added support for choosing which skills to use while chasing.

**1.40 dev 2**

- Fixed issues with chase when UseSkillOnly=0 that really should have been fixed long ago.
    (special thanks to Notepad ++ for this one!). My apologies to the people who reported this and
    who I accused of installing the AI wrong. There was a bug there after all!
- Added framework to autouse homunculus S buffs.
- Fixed commands to use skills on non-monsters. Previously homunculus would not try to get in
    range to use the skill.
- Added some development logging. Please contact me if an AAI_WARNING.log or
    AAI_RMsg.log is created in your RO folder!

**1.40 dev 1, 1x:**

- Fixes to critical (but trivial) bugs.

**1.40 dev 0 - 1/27/2012**

- Added basic support for new homuns.
- You must tell the AI which homunculus you had before if it's not a vani
- Made some improvements to motion locking issue - this is an issue I'm currently not entirely sure
    of the underlying basis of. I think it has to do with the horrible change to Move() behavior
    recently.
- Added support for using homunculus S skills automatically. This has known issues, but is


```
probably better than before.
```
##### 1.35

- Total rewrite of targeting, should fix many problems.
- Cross/Circle motions when friending
- Amistr/Lif buff behavior fixed.
- Autouse of healing skills (healing touch, chaotic blessings)
- Fixed Tank and Rescue tactics
- Extras feature functionality expanded greatly.
- Greatly improved debugging facility.
- AAIStart files created to verify proper installation
- Newly rewritten GUI
- Major internal changes which should streamline future development
- Fixes to unreachable target handling
- Corrected issue with supplied friendlist, present apparently since the inception of the friend list
    feature, which could cause homunculus to kill-steal pistola, a specific iRO player.
- Fixed issue with obstacle avoidance, greatly increased efficiency of obstacle avoidance.
- Fixed longstanding issue with rescue, expanded rescue options.

**1.30b**

- GUI Bugfix
**1.30**
- New GUI configuration program by Machiavellian. Please give feedback on this.
- Added support for new monster mercenaries: Doppleganger, Egnigem Cenia, and Alice.
- Added feature to not return to owner when told to move beyond following distance.
- Added berzerk mode feature.
- Implemented data gathering to identify herb plants (AutoDetectPlant)
- Improved obstacle handling while chasing and while attacking.
- Reduced number of files in the AI to reduse clutter.
- Added extra options files
- Fixed issue with sword mercenaries not using single target skills.
- Fixed issue with some monster mercenary skills not working correctly.
- Fixed issue with pvp just plain not working.
- Fixed issue with pushback bugging the mercenary.
- Fixed issue with homunculus/mercenary not using skills when trying to tank.
- Fixed issue where deletion of H_ID.txt or M_ID.txt would cause crashes.
- General minor improvements.
**1.29**
- Fixed critical bug with bowling bash discovered during xmas lucky box event (affected level 8, 9,
and 10 fencers)
- Made AI behavior with Focused Arrow Strike marginally better.
- Corrected AI behavior to account for newly added skill delay on Double Strafe..
**1.282**
- Added support for Wild Rose mercenaries. Other minor fixes.
**1.281**
- Fixed issue with use of Sacrifice skill
- Fixed issue where homunculus would use skills in a manner contrary to tactics settings with
SkillWhileChasing selected (again).

**1.28**

- Fixed stack overflows involving the fast change responsivity optimizations.
- Fixed a random crash problem.


- Fixed issue where homunculus would use skills in a manner contrary to tactics settings with
    SkillWhileChasing selected.
- Fixed issue where homunculus or mercenary would refuse to use skills when mobbed.
- Fixed issue where GUI would improperly save several settings.
- Added GUI support for future implementation of Chaotic Blessing use (albeit in a terrible manner)
**1.271**
- Critical bugfix.
**1.27**
- Fixed bug with buff skills.
- Added sniping tactics.
- Added support for using debuff skills.
- Added support for selecting levels of skills to use (for homunculus; mercenary skills are not level
selectable)
- Added basic emulation of MirAI friendlisting. Still doesnt do the movement upon friending.
- homunculus/Mercenary will now KS if you tell it to attack or skill on a monster that is fighting
another player
- Various minor fixes/tweaks
- Updated AI to control features added with 1.26 and 1.27.
**1.263**
- Critical bugfix.
- Added DoNotUseRest option.
- Added StickyStandby and DefendStandby options.
**1.262**
- Critical bugfix.
**1.261**
- Critical bugfix.
- Fixed bug with the autofriend added in 1.26 which prevented proper friending of
mercenary/homunculus.
**1.26 (GUI v1.25, AI v1.26)**
- homunculus and mercenary are now always friended to eachother using H_ID and M_ID files.
Disable this by changing NewAutoFriend to 0 in defaults.lua.
- Dance Attack works now.
- Support for a new target class on mercs: Summons. Now there is an option for Default Summon,
which is the default behavior for any summon or retainer not friended to the mercenary. This should
probably be left as is (react low), so that mercs will not kill summoned plants, even if aggressive.
- Support for more sophisticated targeting of player/friend's enemies - targeting when player uses
skills or is casting. Configured in H_FriendMotion and M_FriendMotion files.
- Improved use of buffs - will now not recast buffs right after spawning in if they're still up. This is
particularly important with guard, which apparently works the same way as the player skill, being
taken down when recast.
- Yet another attempt at fixing RouteWalk. This one appears to have been marginally successful.
- Added bug that prevented mercenary from using offensive skills or attacks, and caused homunculus
to attempt to use skills improperly.
**1.25a** (GUI v1.25, AI v1.21)
- Minor GUI improvements, support for v1.25 features, including debuffing, which is not
implemented in the AI yet.
- Numerous minor tweaks to AI behavior that should significantly improve targeting and antiKS
behavior.
- Routewalk nolonger crashes the client; it fails gracefully instead.
- Dance attack temporarally out of order (something went wrong trying to improve it)
- Errors if the default AI was not installed fixed for good.
**1.20** Release
- GUI Improvements
- Dance mode no longer sucks as much.


- Fixed bug causing dependence on the default AI being in the \AI\ folder
- Various targeting changes for improved target selection:
    o Fixed detection of owner/friend targets. This had gone unreported since 1.09 or earlier!
    o Will now finish killing monsters that are on the owner/friend/self, before aggroing more
       targets.
    o Monsters with the ATTACK_LOW and REACT_LOW priority are excempt from that -
       they will be ignored, even if attacking the owner/self/friend, if there are higher priority
       targets to attack.
- Made an attempt at fixing use of skills while chasing.
- Debuff while chasing still doesnt work, but using attack skills while chasing does.
**1.20b0**
- GUI for config
- Minor bugfixes
- Subtle changes to default config files and structure to make GUI easier to write.
- TACTIC_IGNORE option removed for GUI compatability.
**1.09**
- Added basic pvp support
- Removed bug with DoNotChase and UseSkillOnly
- Improved targeting speed
**1.08**
- Added homunculus support.
- Added use debuff skills, but it doesnt work.
- Added DoNotChase option
- Recoded chasing routine, so it doesnt suck like it used to.
- Various tweaks and fixes.
- Added defaults file, so that missing lines from config wont choke the AI.
- Fixed unacceptable following behavior with archers, specifically in combination with
AutoPushback
- Fixed friending bug.
**1.071**
- Critical bugfix.
**1.07**
- Added full tactlist support based on actor IDs, MobID file required.
- Fixed bug with follow command (standby mode)
- Added another bug with follow command (standby mode)
- Added support for live friending and unfriending
- Added support for autofriending of homunculus.
**1.061**
- Critical bugfix.
**1.06:**
- Added feature to autocast provoke or sacrifice on user.
- Added feature to auto use pushback skills (arrow repel and skid trap) if monsters are on the
mercenary (doesn't work great).
- Added feature to make the mercenary go non-aggro if the player sits down.
- Added option to limit the number of times mercenary will use skills on a given enemy.
- Did work on future support of tactics based on actor IDs.
- Observed and captured several minor bugs with target acquisition for study (will be fixed later).
- Fixed bug with random walk.
- Improved friending AI (thanks Biochemist-ness)
- Expanded motion list in Const_.lua for future expansion.
- Dug up and fixed buried treasure in the follow command processing routine.

**1.05:**


- Recoded following to support following at distance (FollowStayBack),
- Fast transition from Chase to Attack,
- Added kiting support.
- Also added an option to only use skill attacks.
- Added bug with random walk.
**1.04:**
- Critical bugfix.
**1.03:**
- Added SuperPassive option, fixed random crash error (line 903 error).
**1.02:**
- Successfully made AI coexist with MirAI.
**1.01:**
- Unsuccessfully made AI coexist with MirAI.
**1.00:**
- Initial release



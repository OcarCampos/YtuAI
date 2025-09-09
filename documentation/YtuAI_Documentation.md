# YtuAI - Comprehensive AI Guide

Welcome to the official documentation for YtuAI, an enhanced and customized Homunculus AI for Ragnarok Online, built upon the solid foundation of AzzyAI.

This guide provides everything you need to know to install, configure, and understand the advanced features of YtuAI.

## Table of Contents

1.  [**Installation**](#installation)
    -   *How to get YtuAI running in your game.*
2.  [**File Structure**](#file-structure)
    -   *An overview of what each file in the AI does.*
3.  [**Configuration (`H_Config.lua`)**](#configuration)
    -   *A detailed look at all the settings you can tweak.*
4.  [**Core AI Systems**](#core-ai-systems)
    -   Smart-Casting System
    -   Dynamic Kiting System
    -   HP-Based Recovery
    -   Economic Suicide Tactic
5.  [**Priority-Based Skill Engine**](#priority-based-skill-engine)
    -   *How the AI chooses which skill to use.*
6.  [**Tactics (`H_Tactics.lua`)**](#tactics)
    -   *How to customize combat behavior for specific monsters.*

---

## Installation

Installing YtuAI is a straightforward process. Our custom AI is a complete package, so you no longer need to download any other base AI files.

1.  **Copy the AI Loader**
    -   Navigate to the `YtuAI` folder in this project.
    -   Copy the `AI.lua` file.
    -   Paste and **replace** the file in your Ragnarok Online `AI` directory (e.g., `C:\Gravity\Ragnarok\AI`). This file is the loader that activates our custom AI.
    -   *If the `AI` folder does not exist in your Ragnarok directory, create it manually.*

2.  **Copy the Custom AI Files**
    -   From the same `YtuAI` folder, copy the entire `USER_AI` folder.
    -   Paste and **replace** the folder and all its contents into your Ragnarok `AI` directory (e.g., `C:\Gravity\Ragnarok\AI\USER_AI`).

3.  **Activate in Game**
    -   Log into Ragnarok Online.
    -   Type the command `/hoai` in the chat.
    -   Your homunculus will now be running YtuAI!

---

## File Structure

This section provides a breakdown of all the essential files in the `USER_AI` directory and what they do.

### Core Logic

-   **`AI_main.lua`**: The brain of the AI. It contains the central state machine that controls all homunculus behavior, from idling and following to combat and custom tactics.
-   **`AI.lua`**: The primary loader script. This is the first file the game client executes, and it's responsible for loading all other `.lua` files in the correct order.

### Configuration & Tactics

-   **`H_Config.lua`**: The main configuration file. Here, you can customize all AI behaviors, including our custom features like the kiting and suicide systems.
-   **`H_Tactics.lua`**: Defines the combat tactics against specific monsters. You can set attack priorities, skill usage, and kiting behavior on a per-monster basis.
-   **`H_PVP_Tact.lua`**: Defines the tactics for Player vs. Player (PVP) combat.

### Skill System

-   **`H_Skills.lua`**: The database for our priority-based skill engine. This is where you define which skills the AI can use, along with their priority and casting conditions.
-   **`H_SkillList.lua`**: A comprehensive database of all homunculus skills, defining their properties like SP cost, range, and cast time.

### Utilities & Extensibility

-   **`AzzyUtil.lua`**: A large utility library with helper functions for everything from math calculations to tactical evaluations. Our custom `ChooseSkill` engine is located here.
-   **`Util.lua`**: A legacy utility file from the original AI, providing basic functions for distance calculation and list management.
-   **`H_Extra.lua`**: A safe place for you to add your own custom functions or override existing ones without modifying the core AI files.
-   **`Stubs.lua`**: Provides empty placeholder functions (stubs) that allow for safe customization and prevent errors.

### Other Files

-   **`A_Friends.lua`**: Manages the friend and foe list, allowing the AI to recognize and interact with other players.
-   **`Defaults.lua`**: A fallback configuration file that provides default settings to prevent crashes if `H_Config.lua` is missing or corrupted.
-   **`Const.lua` / `Const_.lua`**: These files define the core constants that map to the game's internal values (e.g., skill IDs, motion states).

---

## Configuration (`H_Config.lua`)

This is where you can customize the AI's behavior. Below are some of the most important settings.

### General Combat

-   **`AggroHP`**: The HP percentage the homunculus must be *above* to actively seek out and attack monsters. If its HP is below this, it will only fight in self-defense or to protect you. *(Default: 0)*
-   **`FleeHP`**: If the homunculus's HP drops *below* this percentage during combat, it will stop fighting and run back to you. *(Default: 10)*
-   **`RecoverHP`**: After fleeing, the homunculus will remain passive and avoid combat until its HP is *at or above* this percentage. This should be set higher than `FleeHP`. *(Default: 30)*

### Smart-Casting System (Vanilmirth)

-   **`V_SkillSPMin`**: The minimum SP percentage required for the homunculus to use any skill. If its SP drops below this, it will switch to basic attacks to conserve mana. *(Default: 20)*

### Dynamic Kiting System

-   **`K_ReactiveKiteHP`**: If the homunculus's HP drops below this percentage, it will automatically start kiting (running away from) the monster, even if kiting isn't normally enabled for that enemy. *(Default: 50)*
-   **`K_StuckDetection`**: When enabled (`1`), the AI will try to move in a different direction if it gets stuck on an obstacle while kiting. *(Default: 1)*

### Economic Suicide Tactic

-   **`EnableSuicideTactic`**: Set to `1` to enable this feature. When enabled, the homunculus will intentionally seek defeat before its 30-minute timer expires to save you the cost of a "Seed of Life". *(Default: 1)*
-   **`SuicideTimer`**: The time in minutes after being summoned that the suicide tactic will activate. This should be set just under 30 minutes. *(Default: 20)*

---

## Core AI Systems

This section explains the logic behind the custom features that make YtuAI a smart and efficient leveling partner.

### Skill Cooldown Optimization

To prevent the AI from wastefully spamming skills that are on cooldown, YtuAI now includes a cooldown management system. The AI calculates and respects the built-in delay for skills like `Caprice`, ensuring it only attempts to cast them when they are actually available. This results in smoother, more efficient combat and prevents the AI from getting stuck in a loop of failed casting attempts.

### Smart SP Management

Gone are the days of a simple SP check. YtuAI now features a tiered, dynamic priority system for SP management, allowing for much more intelligent resource control. The AI will now behave differently depending on its current SP, and can even override its own rules in an emergency.

Here’s how it works:

-   **Aggressive (SP > 70%)**: When SP is high, the AI will use skills with a high priority, maximizing damage output.
-   **Balanced (30% < SP <= 70%)**: In this range, the AI balances skill usage with SP conservation, ensuring a steady performance.
-   **Conservative (SP <= 30%)**: When SP is low, the AI will only use skills if absolutely necessary, preserving resources for critical moments.
-   **Emergency Override**: If the homunculus is mobbed by three or more enemies, it will automatically assign a high priority to defensive or AOE skills, regardless of its current SP level.

This system ensures that your homunculus is both a powerful attacker and a strategic partner, capable of adapting to any situation.

### Smart-Casting System

To prevent the homunculus from wasting valuable SP, the smart-casting system ensures that skills are used efficiently. For the Vanilmirth, this means checking if it has enough SP (`V_SkillSPMin`) before casting any skill. If SP is low, it will revert to basic attacks, ensuring it always has a reserve for when it matters.

### Dynamic Kiting System

Survivability is key. The dynamic kiting system activates automatically when the homunculus's HP drops below a set threshold (`K_ReactiveKiteHP`). It will begin to kite its target, moving away between attacks to minimize incoming damage. The system also features stuck detection (`K_StuckDetection`), allowing the AI to navigate around obstacles and avoid getting trapped.

### HP-Based Recovery

When the homunculus's HP drops critically low (`FleeHP`), it enters a self-preservation state. It will immediately stop fighting and flee to the owner's side. The AI then enters a recovery mode, where it will remain passive and avoid all combat until its HP has regenerated to a safe level (`RecoverHP`).

### Economic Suicide Tactic

This unique feature is designed to save zeny. A homunculus has a 30-minute lifespan, after which it requires a costly "Seed of Life" to be revived. The economic suicide tactic bypasses this. After a set amount of time (`SuicideTimer`), the AI will intentionally seek out the nearest monster to be defeated. This allows you to resummon a fresh, full-health homunculus without spending any zeny.

---

## Priority-Based Skill Engine

YtuAI uses a flexible, priority-based skill engine to make intelligent decisions about which skill to use in combat. This system is controlled by the `H_Skills.lua` file.

### How It Works

When it's time to use a skill, the AI's `ChooseSkill()` function (located in `AzzyUtil.lua`) scans the `Skills` table in `H_Skills.lua`. It evaluates each skill based on two main criteria:

1.  **Conditions**: These are the requirements that must be met for a skill to be considered. Examples include `min_sp_pct` (minimum SP percentage) and `requires_state` (the AI must be in a specific state, like `ATTACK_ST`).
2.  **Priority**: A number that determines how important a skill is. The higher the number, the higher the priority.

The AI will always choose the valid skill with the highest priority.

### Customizing Skills (`H_Skills.lua`)

You can easily add new skills or modify existing ones. Here is the structure for a skill entry:

```lua
[SKILL_ID] = {
    priority = <number>,
    type = "<skill_type>",
    conditions = {
        min_sp_pct = <number>,
        requires_state = "<STATE_NAME>",
        -- Add other conditions here
    }
},
```

---

## Tactics (`H_Tactics.lua`)

While the skill engine decides *which* skill to use, the tactics file (`H_Tactics.lua`) decides *how* to engage a monster in the first place.

Each line in this file maps a monster's ID to a set of behaviors. The most important ones are:

-   **Attack Priority**: Determines how eagerly the AI will attack the monster (e.g., `TACT_ATTACK_H` for high priority, `TACT_REACT_L` for low priority).
-   **Skill Usage**: Controls when to use skills (e.g., `SKILL_ALWAYS`, `SKILL_NEVER`).
-   **Kiting**: Defines whether to kite the monster (e.g., `KITE_ALWAYS`, `KITE_NEVER`).

The default tactic (ID `0`) is used for any monster that doesn't have a specific entry.

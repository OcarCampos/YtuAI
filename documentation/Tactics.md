# AI-Dieter Tactics (`H_Tactics.lua`)

This file controls how your homunculus behaves when encountering specific monsters. You can define a set of tactics for each monster ID.

## `MyTact` Table Structure

The `MyTact` table is a collection of tactics, where the key is the monster ID and the value is a table of tactical settings. The default tactic is defined with the key `0`.

Each tactic table has the following structure:

```lua
MyTact[monster_id] = {basic_tactic, skill_usage, kiting_tactic, cast_reaction, pushback_tactic, debuff_tactic, class_tactic, rescue_tactic, weight, snipe_tactic, ks_tactic, priority, chase_tactic}
```

### Tactical Settings Explained

1.  **Basic Tactic**: How the homunculus should generally behave.
    -   `TACT_ATTACK_H`: Attack with high priority.
    -   `TACT_ATTACK_M`: Attack with medium priority.
    -   `TACT_ATTACK_L`: Attack with low priority.
    -   `TACT_REACT_H`: React to attacks with high priority.
    -   `TACT_REACT_M`: React to attacks with medium priority.
    -   `TACT_REACT_L`: React to attacks with low priority.
    -   `TACT_SNIPE_H`: Snipe from a distance with high priority.
    -   `TACT_SNIPE_M`: Snipe from a distance with medium priority.
    -   `TACT_SNIPE_L`: Snipe from a distance with low priority.
    -   `TACT_TANK`: Tank the monster.
    -   `TACT_IGNORE`: Ignore the monster.

2.  **Skill Usage**: When to use skills against this monster.
    -   `SKILL_ALWAYS`: Always use skills.
    -   `SKILL_REACT`: Use skills in reaction to being attacked.
    -   `SKILL_NEVER`: Never use skills.

3.  **Kiting Tactic**: Whether to kite this monster.
    -   `KITE_ALWAYS`: Always kite.
    -   `KITE_REACT`: Kite in reaction to being attacked.
    -   `KITE_NEVER`: Never kite.

4.  **Cast Reaction**: How to react to a monster casting a skill.
    -   `CAST_REACT`: React to the cast.
    -   `CAST_IGNORE`: Ignore the cast.

5.  **Pushback Tactic**: Whether to use pushback skills.
    -   `PUSH_ALWAYS`: Always use pushback skills.
    -   `PUSH_REACT`: Use pushback skills in reaction to being attacked.
    -   `PUSH_NEVER`: Never use pushback skills.

6.  **Debuff Tactic**: Which debuffs to use.
    -   `DEBUFF_NEVER`: Never use debuffs.
    -   `DEBUFF_ASH_A`: Use Volcanic Ash (for Dieter).

7.  **Class Tactic**: Which class of homunculus can use this tactic.
    -   `CLASS_S`: Only Homunculus S.
    -   `CLASS_OLD`: Only old homunculi.
    -   `CLASS_BOTH`: Both types.

8.  **Rescue Tactic**: When to rescue the owner.
    -   `RESCUE_ALWAYS`: Always rescue.
    -   `RESCUE_REACT`: Rescue in reaction to the owner being attacked.
    -   `RESCUE_NEVER`: Never rescue.

9.  **Weight**: A numerical weight for this tactic. Higher numbers mean higher priority.

10. **Snipe Tactic**: Whether to snipe this monster.
    -   `SNIPE_ENABLE`: Enable sniping.
    -   `SNIPE_DISABLE`: Disable sniping.

11. **KS Tactic**: Whether to engage in kill-stealing.
    -   `KS_ALWAYS`: Always kill-steal.
    -   `KS_NEVER`: Never kill-steal.

12. **Priority**: The priority of this monster as a target. Higher numbers mean higher priority.

13. **Chase Tactic**: Whether to chase this monster.
    -   `CHASE_ALWAYS`: Always chase.
    -   `CHASE_NORMAL`: Chase normally.
    -   `CHASE_NEVER`: Never chase.

--------------------------------------------------------------------------------
-- File: H_PVP_Tact.lua
--
-- Project: VanilAI
--
-- Description:
--     This file defines the tactics for Player vs. Player (PVP) combat.
--     It specifies how the homunculus should behave when encountering other
--     players based on their status in the `A_Friends.lua` list.
--
-- Note:
--     Each entry maps a player status (e.g., KOS, ALLY) to a set of tactical
--     behaviors, such as attack priority, kiting, and skill usage.
--------------------------------------------------------------------------------

MyPVPTact={}
MyPVPTact[0]={TACT_REACT_L,SKILL_ALWAYS,KITE_NEVER,CAST_REACT,PUSH_NEVER,DEBUFF_NEVER,CLASS_BOTH,RESCUE_NEVER}
MyPVPTact[KOS]={TACT_ATTACK_H,SKILL_ALWAYS,KITE_ALWAYS,CAST_REACT,PUSH_SELF,DEBUFF_NEVER,CLASS_BOTH,RESCUE_NEVER}
MyPVPTact[ENEMY]={TACT_REACT_H,SKILL_ALWAYS,KITE_ALWAYS,CAST_REACT,PUSH_SELF,DEBUFF_NEVER,CLASS_BOTH,RESCUE_NEVER}
MyPVPTact[NEUTRAL]={TACT_REACT_M,SKILL_ALWAYS,KITE_NEVER,CAST_PASSIVE,PUSH_NEVER,DEBUFF_NEVER,CLASS_BOTH,RESCUE_NEVER}
MyPVPTact[FRIEND]={TACT_IGNORE,SKILL_ALWAYS,KITE_NEVER,CAST_PASSIVE,PUSH_NEVER,DEBUFF_NEVER,CLASS_BOTH,RESCUE_NEVER}
MyPVPTact[ALLY]={TACT_IGNORE,SKILL_NEVER,KITE_NEVER,CAST_PASSIVE,PUSH_NEVER,DEBUFF_NEVER,CLASS_BOTH,RESCUE_NEVER}
MyPVPTact[RETAINER]={TACT_IGNORE,SKILL_NEVER,KITE_NEVER,CAST_PASSIVE,PUSH_NEVER,DEBUFF_NEVER,CLASS_BOTH,RESCUE_NEVER}

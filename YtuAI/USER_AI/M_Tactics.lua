--------------------------------------------------------------------------------
-- File: M_Tactics.lua
--
-- Project: YtuAI
--
-- Description:
--     This file defines the combat tactics for the Mercenary AI.
--
-- Note:
--     This file is NOT USED by the Homunculus AI. It is part of the original
--     AzzyAI package and is not relevant to the VanilAI project.
--------------------------------------------------------------------------------

MyTact={}
MyTact[0]={TACT_ATTACK_M,SKILL_ALWAYS,KITE_NEVER,CAST_REACT,PUSH_SELF,DEBUFF_NEVER,CLASS_BOTH,RESCUE_RETAINER,-1,SNIPE_OK,KS_NEVER,1,CHASE_NORMAL} --Default
MyTact[10]={TACT_REACT_M,SKILL_ALWAYS,KITE_REACT,CAST_REACT,PUSH_SELF,DEBUFF_NEVER,CLASS_BOTH,RESCUE_NEVER,-1,SNIPE_OK,KS_NEVER,1,CHASE_NORMAL} --Default Summon
MyTact[11]={TACT_REACT_M,SKILL_NEVER,KITE_NEVER,CAST_PASSIVE,PUSH_NEVER,DEBUFF_NEVER,CLASS_BOTH,RESCUE_NEVER,-1,SNIPE_OK,KS_NEVER,1,CHASE_NORMAL} --Autodetect Plant 
TactLastSavedDate        = "16/07/2025 23:49:07"
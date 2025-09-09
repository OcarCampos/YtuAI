--------------------------------------------------------------------------------
-- Priority-Based Skill Engine: Skill Database
--------------------------------------------------------------------------------
-- This file defines the skills available to the homunculus, along with their
-- priorities and casting conditions. The AI will use this data to decide
-- which skill is best to use in any given situation.
--------------------------------------------------------------------------------

Skills = {
	-- Vanilmirth Skills
	[HVAN_CAPRICE] = {
		priority = function()
			local sp_pct = SPPercent(MyID)
			local mob_count = 0

			-- Only check for mobs if there is a valid target
			if MyEnemy and MyEnemy ~= 0 then
				mob_count = GetMobCount(MyID, HVAN_CAPRICE, GetV(V_SKILLLEVEL, MyID, HVAN_CAPRICE), MyEnemy, 1)
			end

			-- Emergency override: if mobbed by 3 or more monsters, high priority regardless of SP.
			if mob_count >= 3 then
				return 95
			end

			-- Tiered priority based on SP
			if sp_pct > 70 then
				return 90 -- Aggressive: High SP, high priority
			elseif sp_pct > 30 then
				return 60 -- Balanced: Medium SP, medium priority
			else
				return 30 -- Conservative: Low SP, low priority
			end
		end,
		type = "AOE_ATTACK",
		conditions = {
			min_sp_pct = 10, -- Lowered the bar, as priority function now manages SP.
			requires_state = "ATTACK_ST",
			-- Cooldown check will be added to the main AI logic.
		}
	},

	-- Add other skills here as we expand the system...
}

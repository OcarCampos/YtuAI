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
		priority = 80, -- High priority, but not the highest, allowing for interrupts.
		type = "AOE_ATTACK",
		conditions = {
			min_sp_pct = 20, -- Requires at least 20% SP to cast.
			min_mob_count = 3, -- Requires at least 3 monsters to be nearby.
			requires_state = "ATTACK_ST", -- Only use when in the main attack state.
		}
	},

	-- Add other skills here as we expand the system...
}

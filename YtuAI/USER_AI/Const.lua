

--------------------------------------------------------------------------------
-- File: Const.lua
--
-- Project: YtuAI
--
-- Description:
--     This file defines the core constants that map to the game client's
--     internal values. It includes identifiers for motions, commands, object
--     properties (V_...), and homunculus/mercenary types.
--
-- Note:
--     This file is based on the original game AI scripts and serves as a
--     fundamental reference. It should not be modified.
--------------------------------------------------------------------------------

--  c function

--[[
function	TraceAI (string) end
function	MoveToOwner (id) end
function 	Move (id,x,y) end
function	Attack (id,id) end
function 	GetV (V_,id) end
function	GetActors () end
function	GetTick () end
function	GetMsg (id) end
function	GetResMsg (id) end
function	SkillObject (id,level,skill,target) end
function	SkillGround (id,level,skill,x,y) end
function	IsMonster (id) end								-- Is id a monster? yes -> 1 no -> 0

--]]





-------------------------------------------------
-- constants
-------------------------------------------------


--------------------------------
V_OWNER				=	0		-- Owner's ID			
V_POSITION			=	1		-- Object's position 
V_TYPE				=	2		-- Not implemented 
V_MOTION			=	3		-- Motion 
V_ATTACKRANGE		=	4		-- Physical attack range 
V_TARGET			=   5		-- Attack, skill use target ID 
V_SKILLATTACKRANGE	=	6		-- Skill use range 
V_HOMUNTYPE			=   7		-- Homunculus type
V_HP				=	8		-- HP (applies only to homunculus and owner)
V_SP				=	9		-- SP (applies only to homunculus and owner)
V_MAXHP				=   10		-- Max HP (applies only to homunculus and owner)
V_MAXSP				=   11		-- Max SP (applies only to homunculus and owner)
V_MERTYPE		  =		12    -- Mercenary type	
V_POSITION_APPLY_SKILLATTACKRANGE = 13	-- Skill Attack range
V_SKILLATTACKRANGE_LEVEL = 14	-- Skill Attack range level
---------------------------------	





--------------------------------------------
-- Homunculus Type 
--------------------------------------------

LIF				= 1
AMISTR			= 2
FILIR			= 3
VANILMIRTH		= 4
LIF2			= 5
AMISTR2			= 6
FILIR2			= 7
VANILMIRTH2		= 8
LIF_H			= 9
AMISTR_H		= 10
FILIR_H			= 11
VANILMIRTH_H	= 12
LIF_H2			= 13
AMISTR_H2		= 14
FILIR_H2		= 15
VANILMIRTH_H2	= 16

--------------------------------------------



--------------------------------------------
-- Mercenary Type 
--------------------------------------------
ARCHER01	= 1		
ARCHER02	= 2			
ARCHER03	= 3	
ARCHER04	= 4
ARCHER05	= 5
ARCHER06	= 6
ARCHER07	= 7
ARCHER08	= 8
ARCHER09	= 9
ARCHER10	= 10
LANCER01	= 11
LANCER02	= 12
LANCER03	= 13
LANCER04	= 14
LANCER05	= 15
LANCER06	= 16
LANCER07	= 17
LANCER08	= 18
LANCER09	= 19
LANCER10	= 20
SWORDMAN01	= 21		
SWORDMAN02	= 22	
SWORDMAN03	= 23
SWORDMAN04	= 24
SWORDMAN05	= 25
SWORDMAN06	= 26
SWORDMAN07	= 27
SWORDMAN08	= 28
SWORDMAN09	= 29
SWORDMAN10	= 30
--------------------------------------------



--------------------------
MOTION_STAND	= 0
MOTION_MOVE		= 1
MOTION_ATTACK	= 2
MOTION_DEAD     = 3
MOTION_ATTACK2	= 9 
--------------------------




--------------------------
-- command  
--------------------------
NONE_CMD			= 0
MOVE_CMD			= 1
STOP_CMD			= 2
ATTACK_OBJECT_CMD	= 3
ATTACK_AREA_CMD		= 4
PATROL_CMD			= 5
HOLD_CMD			= 6
SKILL_OBJECT_CMD	= 7
SKILL_AREA_CMD		= 8
FOLLOW_CMD			= 9
--------------------------



--[[ Command format 

MOVE_CMD
	{ID,X,Y}
	  
STOP_CMD
	{ID}

ATTACK_OBJECT_CMD
	{ID,TargetID}

ATTACK_AREA_CMD	
	{ID,X,Y}

PATROL_CMD	
	{ID,X,Y}
	
HOLD_CMD
	{ID}

SKILL_OBJECT_CMD
	{ID,skill,level,target}

SKILL_AREA_CMD
	{ID,skill,level,X,Y}

FOLLOW_CMD
	{ID}

--]]


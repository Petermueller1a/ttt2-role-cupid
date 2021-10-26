CreateConVar('ttt_cupid_damage_split_enabled', 1, {FCVAR_NOTIFY, FCVAR_ARCHIVE})
CreateConVar('ttt_cupid_old_weapon', 0, {FCVAR_NOTIFY, FCVAR_ARCHIVE})
CreateConVar('ttt_cupid_forced_selflove', 0, {FCVAR_NOTIFY, FCVAR_ARCHIVE})
CreateConVar('ttt_cupid_lovers_force_own_team', 0, {FCVAR_NOTIFY, FCVAR_ARCHIVE})
CreateConVar('ttt_cupid_joins_team_lovers', 0, {FCVAR_NOTIFY, FCVAR_ARCHIVE})
CreateConVar('ttt_cupid_timelimit_magic', 60, {FCVAR_NOTIFY, FCVAR_ARCHIVE})


hook.Add("TTTUlxDynamicRCVars", "ttt2_ulx_dynamic_cupid_convars", function(tbl)
	tbl[ROLE_CUPID] = tbl[ROLE_CUPID] or {}
	
	-- Implementing a ConVar for the Lovers damage split.
	
	table.insert(tbl[ROLE_CUPID], {cvar = "ttt_cupid_damage_split_enabled", checkbox = true, min = 0, max = 1, decimal = 0, desc = "ttt_cupid_lovers_damage_split_enabled (def. 1)"})

	-- Implementing a ConVar that decides if Cupid uses his old Weapon.

    table.insert(tbl[ROLE_CUPID], {cvar = "ttt_cupid_old_weapon", checkbox = true, min = 0, max = 1, decimal = 0, desc = "ttt_cupid_old_weapon (def. 0)"})
    
	-- Implementing a ConVar that decides if Cupid has to choose himself.

    table.insert(tbl[ROLE_CUPID], {cvar = "ttt_cupid_forced_selflove", checkbox = true, min = 0, max = 1, decimal = 0, desc = "ttt_cupid_forced_selflove (def. 0)"})
    
	-- Implementing a ConVar that decides if Lovers will always join a new team.

    table.insert(tbl[ROLE_CUPID], {cvar = "ttt_cupid_lovers_force_own_team", checkbox = true, min = 0, max = 1, decimal = 0, desc = "ttt_cupid_lovers_force_own_team (def. 0)"})

	-- Implementing a ConVar that forces Cupid and both Lovers to be in their own team.

    table.insert(tbl[ROLE_CUPID], {cvar = "ttt_cupid_joins_team_lovers", checkbox = true, min = 0, max = 1, decimal = 0, desc = "ttt_cupid_joins_team_lovers (def. 0)"})

	-- Implementing a ConVar that changes the time cupid has for his magic

    table.insert(tbl[ROLE_CUPID], {cvar = "ttt_cupid_timelimit_magic", checkbox = false, min = 0, max = 999, decimal = 0, desc = "ttt_cupid_joins_team_lovers (def. 60)"})
    
end)
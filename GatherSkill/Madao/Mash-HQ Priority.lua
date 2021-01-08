local tbl = 
{
	
	{
		addchain = "1",
		ephemeral = true,
		g_func = "d(\"==== [MASSHIRO] - Starting Skill Profile\")\nlocal items = Player:GetGatherableSlotList()\nlocal node  = Player:GetTarget()\nlocal found = \"awaiting\"\n\n-- Check Gather Attempts\nd(\"==== [MASSHIRO] - Checking Gather Attempts\")\nif node.gatherattemptsmax == node.gatherattempts then\n    -- Check GP\n    d(\"==== [MASSHIRO] - Checking GP\")\n    if Player.GP.current > 699 then\n        for i, item in ipairs(items) do\n            if (itemid == item.id) then \n                found = item\n            end\n        end\n\n        if found == \"awaiting\" then return false end\n\n        if not type(found) == 'table' then\n            d(\"==== [MASSHIRO] - Item not found in this node\")\n            return false\n        else\n            if not found.quantity then\n                d(\"==== [MASSHIRO] - No Quantity\")\n            else\n                if found.quantity > 1 then\n                    d(\"==== [MASSHIRO] - Quantity: \"..found.quantity)\n                    return true\n                end\n            end\n        end\n    else\n        d(\"==== [MASSHIRO] - Not enough GP\")\n        return false\n    end\nelse\n    d(\"==== [MASSHIRO] - Attempts not maxed\")\n    return false\nend",
		id = 6,
		legend = true,
		name = "Unearth III - Leaf Turn III",
		normal = true,
		singlecheck = true,
		singleuse = true,
		skip = false,
		unspoil = true,
	},
	
	{
		buffsNot = "1286",
		ephemeral = true,
		hasbuffs = "1285",
		id = 10,
		legend = true,
		name = "Bountiful Yield II - Bountiful Harvest II",
		normal = true,
		skip = false,
		unspoil = true,
	},
}



return tbl
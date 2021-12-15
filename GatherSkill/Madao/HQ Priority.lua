local tbl = 
{
	
	{
		addchain = "1",
		ephemeral = true,
		g_func = "d([[==== [Mash] - Starting Skill Profile]])\nlocal items = Player:GetGatherableSlotList()\nlocal node  = Player:GetTarget()\nlocal found = [[awaiting]]\n\n-- Check Gather Attempts\nd([[==== [Mash] - Checking Gather Attempts]])\nif node.gatherattemptsmax == node.gatherattempts then\n    -- Check GP\n    d([[==== [Mash] - Checking GP]])\n    if Player.GP.current > 699 then\n        for _, item in pairs(items) do\n            if (itemid == item.id) then\n                d(itemid)\n                found = item\n            end\n        end\n\n        if not type(found) == [[table]] then\n            d([[==== [Mash] - Item not found in this node]])\n            return false\n        else\n            if not found.quantity then\n                d([[==== [Mash] - No Quantity]])\n                return false\n            else\n                if found.quantity > 1 then\n                    d([[==== [Mash] - Quantity: ]] .. found.quantity)\n                    return true\n                end\n            end\n        end\n    else\n        d([[==== [Mash] - Not enough GP]])\n        return false\n    end\nelse\n    d([[==== [Mash] - Attempts not maxed]])\n    return false\nend",
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
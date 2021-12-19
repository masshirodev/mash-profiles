local tbl = 
{
	
	{
		ephemeral = true,
		g_skfunc = "d([[Gather Profile ------------------ Start]])\nd([[Gather Profile -- Part 1 - Pop Solid/Ageless]])\n\nlocal node = Player:GetTarget()\n\nif (node.gatherattemptsmax - 2) >= node.gatherattempts then\n    if MashLib.System.GetJob(Player.Job) == [[Botanist]] then\n        d([[Gather Profile -- Character is a Botanist]])\n\n        if MashLib.System.SearchActionById(1, 215):IsReady() then\n            MashLib.System.SearchActionById(1, 215):Cast()\n            d([[Gather Profile -- Action \"]] .. MashLib.System.SearchActionById(1, 215).Name .. [[\" casted.]])\n        else\n            d([[Gather Profile -- Action \"]] .. MashLib.System.SearchActionById(1, 215).Name .. [[\" not ready.]])\n        end\n    elseif MashLib.System.GetJob(Player.Job) == [[Miner]] then \n        d([[Gather Profile -- Character is a Miner]])\n\n        if MashLib.System.SearchActionById(1, 232):IsReady() then\n            MashLib.System.SearchActionById(1, 232):Cast()\n            d([[Gather Profile -- Action \"]] .. MashLib.System.SearchActionById(1, 232).Name .. [[\" not ready.]])\n        else\n            d([[Gather Profile -- Action \"]] .. MashLib.System.SearchActionById(1, 232).Name .. [[\" not ready.]])\n        end\n    else\n        d([[Gather Profile -- Not a supported gather job.]])\n    end \nelse\n    d([[Gather Profile -- Gather attempt condion not met]])\nend\n\nreturn true",
		id = -2,
		legend = true,
		name = "Assign Skill From Script",
		name2 = "Pop Solid/Ageless",
		normal = true,
		singlecheck = false,
		singleuse = false,
		unspoil = true,
	},
	
	{
		ephemeral = true,
		g_skfunc = "d([[Gather Profile -- Part 2 - Pop Solid/Ageless]])\n\nif MashLib.System.GetJob(Player.Job) == [[Botanist]] then\n    d([[Gather Profile -- Character is a Botanist]])\n\n    if MashLib.System.SearchActionById(1, 26522):IsReady() then\n        MashLib.System.SearchActionById(1, 26522):Cast()\n        d([[Gather Profile -- Action \"]] .. MashLib.System.SearchActionById(1, 26522).Name .. [[\" casted.]])\n    else\n        d([[Gather Profile -- Action \"]] .. MashLib.System.SearchActionById(1, 26522).Name .. [[\" not ready.]])\n    end\nelseif MashLib.System.GetJob(Player.Job) == [[Miner]] then\n    d([[Gather Profile -- Character is a Miner]])\n    if MashLib.System.SearchActionById(1, 26521):IsReady() then\n        MashLib.System.SearchActionById(1, 26521):Cast()\n        d([[Gather Profile -- Action \"]] .. MashLib.System.SearchActionById(1, 26521).Name .. [[\" casted.]])\n    else\n        d([[Gather Profile -- Action \"]] .. MashLib.System.SearchActionById(1, 26521).Name .. [[\" not ready.]])\n    end\nend\n\nd([[Gather Profile ------------------ End]])\n\nreturn true",
		id = -2,
		legend = true,
		name = "Assign Skill From Script",
		name2 = "Pop Wise on Eureka",
		normal = true,
		singlecheck = false,
		singleuse = false,
		unspoil = true,
	},
}



return tbl
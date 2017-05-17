--[[
	Testclass for "Filthy Peasants" peasant
	©LazyProggers
]]--

-- LIBARIES (uncomment to use)
	--	require "peasant"	--	Peasant class for peasant creation, deletion, adjustment
	require "gamer"	--	Class for global variables and some player content

-- Start of the abilities.lua program

-- VARIABLES

-- FUNCTIONS
function ability1(gpower, civilisation)
	if (gpower > 20) then
		print("Ability 1 takes effect")
	else
		print("Not enough power for that Sir.")
	end
end

-- TESTING AREA

--[[
	Notes:

	Known errors:
	
]]--

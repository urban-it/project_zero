--[[
	Testclass for "Filthy Peasants" peasant
	©LazyProggers
]]--

-- LIBARIES
require "math"
require "peasant"

-- Start of the gamer.lua program
-- VARIABLES
gpower = 0 gawe = 0 gworship = 0 glove = 0 gfear = 0 ghatred = 0
playerstats = {gawe, gworship, glove, gfear, ghatred}	-- Create array for some cases of storage of the variables/ Idea for storage

-- FUNCTIONS
function calc_gawe(civilisation)	-- This function adds up the awe of the civilisation
	for i, peasant in ipairs(civilisation) do
		gawe = peasant.awe + gawe
	end
	return gawe
end

function calc_gworship(civilisation)	-- This function adds up the worship of the civilisation
	for i, peasant in ipairs(civilisation) do
		gworship = peasant.worship + gworship
	end
	return gworship
end

function calc_glove(civilisation)	-- NO not glove! g love. That´s what the function calcs.
	for i, peasant in ipairs(civilisation) do
		glove = peasant.love + glove
	end
	return glove
end

function calc_gfear(civilisation)	-- This function adds up the fear of the civilisation
	for i, peasant in ipairs(civilisation) do
		gfear = peasant.fear + gfear
	end
	return gfear
end

function calc_ghatred(civilisation)	-- This function adds up the fear of the civilisation
	for i, peasant in ipairs(civilisation) do
		ghatred = peasant.hatred + ghatred
	end
	return ghatred
end

function calc_all(civilisation)	-- This function adds up all the values for one civilisation
	for i, peasant in ipairs(civilisation) do
		gawe = peasant.awe + gawe
		gworship = peasant.worship + gworship
		glove = peasant.love + glove
		gfear = peasant.fear + gfear
		ghatred = peasant.hatred + ghatred
	end
	return	-- No value jet
end

-- TESTING AREA
--[[
peasant1 = birth(peasant1)
change_love(peasant1, 20)
print(peasant1.name)

peasant2 = birth(peasant2)
change_love(peasant2, -12)
print(peasant2.name)

peasant3 = birth(peasant3)
change_love(peasant3, 130)
print(peasant3.name)

civilisation = {peasant1, peasant2, peasant3}
calc_glove(civilisation)
print(glove)
]]--

--[[
	Notes:
	
	Known errors:
		No variable for calc_all function
]]--

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
function calc_power(civilisation)
	calc_all(civilisation)
	-- gpower = algorithm to calculate the power
	return gpower
end

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
	return gawe, gworship, glove, gfear, ghatred
end

-- TESTING AREA

--[[
	Notes:
	
	Known errors:
	
]]--

--[[
	Gamerclass for "Filthy Peasants"
	CURRENTLY MAIN CLASS
	©LazyProggers
]]--

-- LIBARIES
require "math"
require "peasant"	-- for creating and editing civilisations and peasants
require "fp_filemanagement" -- for storing and loading game progress

-- Start of the gamer.lua program
-- VARIABLES
gpower = 0 gawe = 0 gworship = 0 glove = 0 gfear = 0 ghatred = 0	-- Declare all environmental variables
gciv = createCiv(10, "Standard Civ")	-- Create a civilisation as standard

-- FUNCTIONS
function calc_power(civilisation)
	calc_all(civilisation)
	-- gpower = algorithm to calculate the power
end

function calc_gawe(civilisation)	-- This function adds up the awe of the civilisation
	for i, peasant in ipairs(civilisation) do
		gawe = peasant.awe + gawe
	end
end

function calc_gworship(civilisation)	-- This function adds up the worship of the civilisation
	for i, peasant in ipairs(civilisation) do
		gworship = peasant.worship + gworship
	end
end

function calc_glove(civilisation)	-- NO not glove! g love. That´s what the function calcs.
	for i, peasant in ipairs(civilisation) do
		glove = peasant.love + glove
	end
end

function calc_gfear(civilisation)	-- This function adds up the fear of the civilisation
	for i, peasant in ipairs(civilisation) do
		gfear = peasant.fear + gfear
	end
end

function calc_ghatred(civilisation)	-- This function adds up the fear of the civilisation
	for i, peasant in ipairs(civilisation) do
		ghatred = peasant.hatred + ghatred
	end
end

function calc_all(civilisation)	-- This function adds up all the values for one civilisation
	for i, peasant in ipairs(civilisation) do
		gawe = peasant.awe + gawe
		gworship = peasant.worship + gworship
		glove = peasant.love + glove
		gfear = peasant.fear + gfear
		ghatred = peasant.hatred + ghatred
	end
end

-- START OF THE PROGRAM
load()	-- Load the savefile or create a new one

save()	-- Safe all info from the current session into a .save file

-- TESTING AREA

--[[
	Notes:
	
	Known errors:
	
]]--

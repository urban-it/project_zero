--[[
	Testclass for "Filthy Peasants" peasant
	©LazyProggers
]]--

-- LIBARIES
require "math"
require "peasant"

-- Start of the gamer.lua program
-- VARIABLES
gpower = 0 gawe = 0 gworship = 0 glove = 0 gfear = 0 ghatred = 0	-- Declare all environmental variables
filepath = "save1.save"	-- Path to the savefile

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

function save()	-- This function safes all variables into a savefile (declared at the beginning)
	currentsave = io.open(filepath, "w+")	-- Open the file with override mode
	io.output(currentsave)	-- Declare file as default file (for the next writings)
	io.write(gpower, "\n")	-- Write the power variable into the first line
	io.write(gawe, "\n")	-- Write the awe variable into the next line ...
	io.write(gworship, "\n")
	io.write(glove, "\n")
	io.write(gfear, "\n")
	io.write(ghatred)
	io.close(currentsave)	-- Close the file
end

function load()	-- This function loads all variables from a savefile
	load = io.open(filepath, "r")	-- Open file with readonly mode
	if (load ~= nil) then	-- If there is a savefile then load it
		io.input(load)	-- Declare file as default file
		gpower = io.read("*line")	-- Read the power variable from the first line...
		gawe = io.read("*line")
		gworship = io.read("*line")
		glove = io.read("*line")
		gfear = io.read("*line")
		ghatred = io.read("*line")
		io.close(load)	-- Close the file
	else
		print("No savefile found.")	-- If there is no savefile, print this
	end
end

-- START OF THE PROGRAM
load()	-- Load the savefile

save()	-- Safe all info from the current session into a .save file

-- TESTING AREA

--[[
	Notes:
	
	Known errors:
	
]]--

--[[
	Filemanagement for "Filthy Peasants"
	©LazyProggers
]]--

-- LIBARIES (uncomment to use)
	--	require "peasant"	--	Peasant class for peasant creation, deletion, adjustment
	--	require "gamer"	--	Class for global variables and some player content

-- Start of the NAME.lua program

-- VARIABLES
filepath = "save1.save"	-- Path to the savefile

-- FUNCTIONS
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

-- TESTING AREA

--[[
	Notes:

	Known errors:
	
]]--

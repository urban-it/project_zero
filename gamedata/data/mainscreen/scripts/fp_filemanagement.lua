--[[
	Filemanagement for "Filthy Peasants"
	©LazyProggers

	Description pending.
]]--

-- LIBARIES (uncomment to use)
	--	require "peasant"	--	Peasant class for peasant creation, deletion, adjustment
	--	require "gamer"	--	Class for global variables and some player content
	--	require "fp_filemanagement"	--	Class for all utilities handing savefiles
	--	require "fp_libary"	--	Libary class for simple functions build and used by us
	--	require "abilities"	--	Class for all abilities and effects

-- VARIABLES
if (filename == nil) then
	filename = "save1.save"	-- For later integration of other filenames (save2 ... )
end

homepath = os.getenv("HOMEPATH")	-- Get user home path
filepath = homepath .. "\\Documents\\FilthyPeasants\\" .. filename 	-- Complete filepath

-- FUNCTIONS
function save()	-- This function safes all variables into a savefile (declared at the beginning)
	currentsave = io.open(filepath, "w+")	-- Open the file with override mode
	io.output(currentsave)	-- Declare file as default file (for the next writings)
	io.write(gpower, "\n")	-- Write the power variable into the first line
	io.write(gawe, "\n")	-- Write the awe variable into the next line (...)
	io.write(gworship, "\n")
	io.write(glove, "\n")
	io.write(gfear, "\n")
	io.write(ghatred)
	io.close(currentsave)	-- Close the file
end

function load()	-- This function loads all variables from a savefile
	load = io.open(filepath, "r")	-- Open file with readonly mode
	if (load ~= nil) then	-- If there is a savefile then load it
		io.input(load)	-- Declare this file as default file
		gpower = io.read("*line")	-- Read the power variable from the first line
		gawe = io.read("*line")		-- Read awe variable from the second line (...)
		gworship = io.read("*line")
		glove = io.read("*line")
		gfear = io.read("*line")
		ghatred = io.read("*line")
		io.close(load)	-- Close the file
	else
		print("No savefile found.")	-- If there is no savefile, print this
		os.execute("mkdir C:\\users\\cngr\\Documents\\FilthyPeasants")
	end
end

function lineCount(filepath)	-- Count lines of any filepath
	count = 1
	io.input(filepath)
	while true do
		line = io.read("*line")
		if line == nil then
			break
		end
		count = count + 1
	end
	return count -- Return the count of the lines in the document
end

-- TESTING AREA

-- FUNCTION CALLS

--[[
	Notes:

	Known errors:
	
]]--

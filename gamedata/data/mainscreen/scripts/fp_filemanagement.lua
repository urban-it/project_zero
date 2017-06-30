--[[
	Filemanagement for "Filthy Peasants"
	©LazyProggers
]]--

-- LIBARIES (uncomment to use)
	require "peasant"	--	Peasant class for peasant creation, deletion, adjustment
	--	require "gamer"	--	Class for global variables and some player content

-- Start of the fp_filemanagement.lua program

-- VARIABLES
if (filenameVar == nil) then
	filenameVar = "save1Var.save"	-- For later integration of other filenames (save2 ... )
end
if (filenameCiv == nil) then
	filenameCiv = "save1Civ.save"	-- For later integration of other filenames (save2 ... )
end

homepath = os.getenv("HOMEPATH")	-- Get user home path
filepathVar = homepath .. "\\Documents\\FilthyPeasants\\" .. filenameVar 	-- Complete Savefile path (all variables)
filepathCiv = homepath .. "\\Documents\\FilthyPeasants\\" .. filenameCiv 

-- FUNCTIONS
function save()	-- This function safes all variables into a savefile (declared at the beginning)
	saveVars()
	saveCiv()
end

function load(gciv)
	loadVars()
	loadCiv(gciv)
end

function saveVars()
	currentsaveVar = io.open(filepathVar, "w+")	-- Open the file with override mode
	io.output(currentsaveVar)	-- Declare file as default file (for the next writings)
	io.write(gpower, "\n")	-- Write the power variable into the first line
	io.write(gawe, "\n")	-- Write the awe variable into the next line ...
	io.write(gworship, "\n")
	io.write(glove, "\n")
	io.write(gfear, "\n")
	io.write(ghatred)
	io.close(currentsaveVar)	-- Close the file
end

function saveCiv()
	currentsaveCiv = io.open(filepathCiv, "w+")
	io.output(currentsaveCiv)
	io.write(gciv[0].name, "\n")
	io.write(gciv[0].startNumber, "\n")
	io.write(gciv[0].creationTime, "\n")
	for i, peasant in ipairs(gciv) do
		io.write(peasant.name, "\n")
		io.write(peasant.awe, "\n")
		io.write(peasant.worship, "\n")
		io.write(peasant.love, "\n")
		io.write(peasant.fear, "\n")
		io.write(peasant.hatred, "\n")
	end
	io.close(currentsaveCiv)
end

function loadVars()	-- This function loads all variables from a savefile
	loadVar = io.open(filepathVar, "r")	-- Open file with readonly mode
	if (loadVar ~= nil) then	-- If there is a savefile then load it
		io.input(loadVar)	-- Declare file as default file
		gpower = io.read("*line")	-- Read the power variable from the first line...
		gawe = io.read("*line")
		gworship = io.read("*line")
		glove = io.read("*line")
		gfear = io.read("*line")
		ghatred = io.read("*line")
		io.close(loadVar)	-- Close the file
	else
		print("No savefile for variables found.")	-- If there is no savefile, print this
	end
end

function loadCiv(gciv)
	loadCiv = io.open(filepathCiv, "r")	
	if (loadCiv ~= nil) then	-- If there is a savefile then load it
		count = lineCount(loadCiv)
		io.input(loadCiv)	-- Declare file as default file
		nameCiv = io.read("*line")
		startNumber = io.read("*line")
		creationTime = io.read("*line")
		gciv[0] = {name = nameCiv, startNumber = startNumber, creationTime = creationTime}
		counterForFor = (count - 3) / 6
		for i = 1, counterForFor, 1 do
			local namePeasant = io.read("*line")
			local awe = io.read("*line")
			local worship = io.read("*line")
			local love = io.read("*line")
			local fear = io.read("*line")
			local hatred = io.read("*line")
			gciv[i] = {name = namePeasant, awe = awe, worship = worship, love = love, fear = fear, hatred = hatred}
		end
		io.close(loadCiv)	-- Close the file
	else
		print("No savefile for civilisation found.")	-- If there is no savefile, print this
		os.execute("mkdir C:\\users\\cngr\\Documents\\FilthyPeasants")
		gciv = createCiv(10, "Standard Civ")
	end
end

function lineCount(file)
	count = 1
	io.input(file)
    while true do
      line = io.read("*line")
      if line == nil then break end
      count = count + 1
    end
    return count
end

-- TESTING AREA

--[[
	Notes:

	Known errors:
	Writing a civ drops an error (Writing a table doesnt work here) -- Solution pending
]]--

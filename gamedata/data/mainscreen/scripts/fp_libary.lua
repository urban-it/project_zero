--[[
	Stringminimizer for "Filthy Peasants"
	©LazyProggers
]]--

-- LIBARIES (uncomment to use)
	--	require "peasant"	--	Peasant class for peasant creation, deletion, adjustment
	--	require "gamer"	--	Class for global variables and some player content

-- FIXED VARIABLES

-- FUNCTIONS
function minimizeString(minString)	-- String minimizing function
	result = ""		-- Final string
	marks = false
	for i=1, string.len(minString) do
		if (string.match('"', string.sub(minString,i,i)) and marks == false) then
			marks = true
		elseif (string.match('"', string.sub(minString,i,i)) and marks == true) then
			marks = false
		end
		if (string.match(" ", string.sub(minString,i,i)) and marks == false) then
			-- If the char is a space character don´t take it to the final string
		else
			result = result .. string.sub(minString, i, i)	-- If it isn´t a space --> Add it to the final string
		end
	end
	return result	-- Return the complete string without spaces
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
	io.close(filepath)
	return count -- Return the count of the lines in the document
end

function minimizeFile(file, newFile)
	loadedfile = io.open(file, "r")	-- Open file with readonly mode
	io.input(loadedfile)
	io.output(newFile)
	for i=1, lineCount(loadedfile) do
		thisLine = io.read("*line")
		print(thisLine)
		-- io.write(minimizeString(thisLine))
	end
	io.close(loadedfile)
	io.close(newFile)
	return newFile
end

-- Start of the minimizer.lua program
function oneLine()
	if arg[1] then
		minimizeString(arg[1])
	else
		print("Please input the string you want minimized.")
		input = io.read()
		minimizeString(input)
		print(result)
	end
end

function oneFile()
	if arg[1] then
		minimizeFile(arg[1], arg[2])
	else
		print("Please input the filepath to the file you want minimized.")
		input = "C:\\Users\\cngr\\Desktop\\test.txt"
		print("Please input the filepath where the minimized file should be saved.")
		output = input .. ".min"
		minimizeFile(input, output)
		print(result)
	end
end

function checkInt(possibleInt)	-- true --> Int
	if (checkEmpty(possibleInt)) then
		return false 
	else
		whitelist = "0123456789"
		for i=1, string.len(possibleInt) do
			if (string.match(whitelist, string.sub(possibleInt, i, i))) then
			else
				return false
			end
		end
		return true
	end
end

function checkString(possibleString)	-- true --> String
	if (checkEmpty(possibleString)) then
		return false
	else
		whitelist = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
		for i=1, string.len(possibleString) do
			if (string.match(whitelist, string.sub(possibleString, i, i))) then
			else
				return false
			end
		end
		return true
	end
end

function checkEmpty(possibleEmpty)	-- true --> Empty
	if (possibleEmpty == nil or possibleEmpty == '') then
		return true
	else
		checker = false
		whitelist = ' '
		for i=1, string.len(possibleEmpty) do
			if (string.match(whitelist, string.sub(possibleEmpty, i, i))) then
				return true
			end
		end
		return false
	end
end

-- Start of the program code
oneFile()

-- TESTING AREA
--[[
print(checkEmpty(" "))	-- true
print(checkEmpty("A"))	-- false
print(checkEmpty())		-- true
print(checkEmpty(1))	-- false
print(checkEmpty("123"))-- false
print(" .. ")
print(checkString(" "))	-- false
print(checkString("A"))	-- true
print(checkString())	-- false
print(checkString(1))	-- false
print(checkString("123"))-- false
print(" .. ")
print(checkInt(" "))	-- false
print(checkInt("A"))	-- false
print(checkInt())		-- false
print(checkInt(1))		-- true
print(checkInt("123"))	-- true
]]--

--[[
	Notes:
		Beta
	Known errors:
		- Print usw. are affected by cutouts
		- files dont work jet
		- Problems with length functions...
]]--

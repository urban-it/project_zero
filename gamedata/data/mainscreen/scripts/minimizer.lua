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
	for i=1, string.len(minString) do
		if (string.match(" ", string.sub(minString,i,i))) then
			-- If the char is a space character don´t take it to the final string
		else
			result = result .. string.sub(minString, i, i)	-- If it isn´t a space --> Add it to the final string
		end
	end
	return result	-- Return the complete string without spaces
end

function minimizeFile(file)
	
end

-- Start of the minimizer.lua program
if arg[1] then
	minimizeString(arg[1])
else
	print("Please input the string you want minimized.")
	input = io.read()
	minimizeString(input)
	print(result)
end

-- TESTING AREA

--[[
	Notes:
		Beta
	Known errors:
		- Files arn´t accepted jet
		- Print usw. are affected by cutouts
]]--

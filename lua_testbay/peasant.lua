--[[
	Testclass for "Filthy Peasants" peasant
	©LazyProggers
]]--

-- LIBARIES
require "math"

-- Start of the peasant class and methods
-- Lua stuff (to make this work correctly)
math.randomseed(os.time()) -- Seed the random function with the time
math.random(); math.random(); math.random() -- To avoid an error, where the "random" number equals 1 generate 3 numbers first

-- VARIABLES
names = {"Tjorben", "Niemand", "Idina-Hui", "Toelpel", "Nichtsnutz", "Idiot", "Dumbaf"}	-- All possible names are cached in this table

-- FUNCTIONS
function checkvalues(peasant_id)
	if peasant_id.awe > 100 then peasant_id.awe = 100	end	-- Check if the awe is over 100% and if yes correct it
	if peasant_id.awe < 0 then peasant_id.awe = 0	end	-- Check if the awe is under 0% and if yes correct it

	if peasant_id.worship > 100 then peasant_id.worship = 100	end	-- Check if the worship is over 100% and if yes correct it
	if peasant_id.worship < 0 then peasant_id.worship = 0	end	-- Check if the worship is under 0% and if yes correct it

	if peasant_id.love > 100 then peasant_id.love = 100	end	-- Check if the love is over 100% and if yes correct it
	if peasant_id.love < 0 then peasant_id.love = 0	end	-- Check if the love is under 0% and if yes correct it

	if peasant_id.fear > 100 then peasant_id.fear = 100	end	-- Check if the fear is over 100% and if yes correct it
	if peasant_id.fear < 0 then peasant_id.fear = 0	end	-- Check if the fear is under 0% and if yes correct it

	if peasant_id.hatred > 100 then peasant_id.hatred = 100	end	-- Check if the hatred is over 100% and if yes correct it
	if peasant_id.hatred < 0 then peasant_id.hatred = 0	end	-- Check if the hatred is under 0% and if yes correct it
	return peasant_id
end

function birth(peasant_id)
	random = math.random(table.getn(names))	-- Get a random number between 0 and the lenght of the names array (table)
	name = names[random]	-- Define name to one of the array names
	peasant_id = {name = name, love = 0, hatred = 0, fear = 0, worship = 0, awe = 0}	-- Safe all variables in the new peasant id
	checkvalues(peasant_id)
	return peasant_id
end

function kill(peasant_id)
	peasant_id = nil	-- Delete all values of the peasant given to the function
	return peasant_id
end

function change_value(peasant_id, value, count)
	if (value == "awe") then
		peasant_id.awe = peasant_id.awe + count
	elseif (value == "worship") then
		peasant_id.worship = peasant_id.worship + count
	elseif (value == "love") then
		peasant_id.love = peasant_id.love + count
	elseif (value == "fear") then
		peasant_id.fear = peasant_id.fear + count
	elseif (value == "hatred") then
		peasant_id.hatred = peasant_id.hatred + count
	end
	checkvalues(peasant_id)
	return peasant_id
end

-- TESTING AREA
--[[
testguy = birth(testguy)	-- Create a monser... or a testguy
change_love(testguy, 5) -- Give him his first lovepoints
print("Your peasant " .. testguy.name .. " was initialized. He got " .. testguy.love .. " love for you.")
change_love(testguy, 10)	-- Give him 10 more love
print("Your peasant " .. testguy.name .. " has now " .. testguy.love .. " love for you.")
change_love(testguy, 150)	-- Add over 100% love to test checkvalues function
print("Your peasant " .. testguy.name .. " has now " .. testguy.love .. " love for you.")
change_love(testguy, -200)	-- Remove all love from him
print("Your peasant " .. testguy.name .. " has now " .. testguy.love .. " love for you.")
testguy = kill(testguy)	-- Let him die :/
if testguy then print("He is still alive! However this should be possible...") else print("Aaaaand... he is gone. :/") end
]]--

--[[
	Notes:
	There are no such things like classes in lua. We got that peasant_id "table" (array) for the peasant and the values (love, fear...) for the stats of the guy
	
	Known errors:

]]--

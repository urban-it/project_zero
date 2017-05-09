--[[
	Testclass for "Filthy Peasants" peasant
	©LazyProggers
]]--

-- LIBARIES (uncomment to use)
	require "peasant"	--	Peasant class for peasant creation, deletion, adjustment
	require "gamer"	--	Class for global variables and some player content
	require "abilities"

-- Start of the test.lua program
testguy1 = birth()	-- Test birth function
testguy2 = birth()
testguy3 = birth()
testguy4 = birth()
testguy4 = kill(testguy4)	-- Test kill function

change_value(testguy1, "love", 25)
change_value(testguy2, "love", 125)	-- Over 100% must be corrected
change_value(testguy3, "love", -25)	-- Under 0% must be corrected

print(testguy1.love .. " = 25")
print(testguy2.love .. " = 100")
print(testguy3.love .. " = 0")

change_value(testguy2, "love", -44)
civilisation1 = {testguy1, testguy3, testguy2}
calc_glove(civilisation1)	-- Global Love must be calculated correctly
print(glove .. " = 81")

-- checktests function
if (testguy1.love == 25 and testguy2.love == 56 and testguy3.love == 0 and glove == 81) then
	print("All tests passed!")
else
	print("One or more test failed. Please check results above.")
end

--[[
	Notes:
		- This class is for testing only
		- To add a test write your test above and add it to the checktests function

]]--

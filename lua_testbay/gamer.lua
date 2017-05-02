--[[
	Testclass for "Filthy Peasants" peasant
	©LazyProggers
]]--

-- Required libaries
require "math"
require "peasant"

-- Start of the gamer.lua program
gpower = 0 gawe = 0 gworship = 0 glove = 0 gfear = 0 ghatred = 0

-- Functions to calculate the global stats

function calc_glove(...)	-- NO not glove! g love. That´s what the function calcs.
	for peasant in arg do
		glove = arg[peasant] + glove
	end
	return glove
end

-- Testing area:

peasant1 = birth(peasant1)
change_love(peasant1, 50)
print(peasant1.name)

peasant2 = birth(peasant2)
change_love(peasant2, -12)
print(peasant2.name)

peasant3 = birth(peasant3)
change_love(peasant3, 130)
print(peasant3.name)

civilisation = {peasant1.love, peasant2.love, peasant3.love}
calc_glove(civilisation)
print(glove)

--[[
	Notes:
	
	Known errors:
	Problem with the function call (variable arguments)
]]--

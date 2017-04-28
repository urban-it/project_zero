--[[
	Testclass for "Filthy Peasants" peasant
	©LazyProggers
]]--
require "math"

love = 0 hatred = 0 fear = 0 worship = 0 awe = 0
random = math.random(4, 10)
names = {"Peasant 1", "Peasant 2", "Peasant 3", "Peasant 4", "Peasant 5", "Peasant 6"}

print("Your peasant " .. names[random] .. " was initialized. He got " .. love .. " love for you.")
--[[
	Notes:

]]--
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

--[[
	the general calculator (lua testproject)
	©Conrad Großer 2017
]]--
function plus(nummer1, nummer2)
	c = nummer1 + nummer2
	print("The sum of ", nummer1, " and ", nummer2, " is ", c)
	return
end

function minus(nummer1, nummer2)
	c = nummer1 - nummer2
	print("The difference between ", nummer1, " and ", nummer2, " is ", c)
	return
end

function multi(nummer1, nummer2)
	c = nummer1 * nummer2
	print("The product of ", nummer1, " and ", nummer2, " is ", c)
	return
end

function durch(nummer1, nummer2)
	if (nummer2 == 0) then
		print("You should know that this is not possible.")
		return
	else
		c = nummer1 / nummer2
		print("The divide of ", nummer1, " and ", nummer2, " is ", c)
		return
	end
end

function fact(nummer1)
	if nummer1 == 0 then
		return 1
	else
		return nummer1 * fact(nummer1-1)
	end
end

function getNumbers()
	print("Insert the first number:")
	num1 = io.read("*number")
	print("Insert the second number:")
	num2 = io.read("*number")
	if (operation == 1) then
		plus(num1, num2)
	elseif (operation == 2) then
		minus(num1, num2)
	elseif (operation == 3) then
		multi(num1, num2)
	elseif (operation == 4) then
		durch(num1, num2)
	end
	return
end

function menue()
	os.execute("clear")
	os.execute("cls")
	print("the general calc")
	print("Which operation do you want to use?\n1 | Addition\n2 | Subtraction\n3 | Multiply\n4 | Divide\n5 | Faculty")
	operation = io.read("*number")

	if (operation == 1) then
		print("Addition is selected")
		getNumbers()
		return
	elseif (operation == 2) then
		print("Subtraction is selected")
		getNumbers()
		return
	elseif (operation == 3) then
		print("Multiplication is selected")
		getNumbers()
		return
	elseif (operation == 4) then
		print("Division is selected")
		getNumbers()
		return
	elseif (operation == 5) then
		print("Faculty is selected\nPlease insert the number you want the faculty of:")
		num1 = io.read("*number")
		print("The faculty of ", num1, " is ", fact(num1))
		return
	else
		print("No valid selection. Please insert a valid number. Press Enter to try again...")
		menue()
	end
end

menue()

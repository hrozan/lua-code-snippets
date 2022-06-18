local function bubbleSort(array, length)
	repeat
		local swapped = false
		for i = 2, length do
			if array[i - 1] > array[i] then
				array[i], array[i - 1] = array[i - 1], array[i]
				swapped = true
			end
		end
	until swapped == false
end

local function printArray(array)
	io.write("[")
	for i in pairs(array) do
		io.write(array[i])
	end
	io.write("]\n")
end

local function main()
	local array = { 4, 7, 5, 1, 3 }

	printArray(array)
	bubbleSort(array, 5)
	printArray(array)
end

main()

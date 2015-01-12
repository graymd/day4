total_price = 0
x = 0

hash = [{
	 name: "kitter",
	 price: 50
	 },
	 {
	 name: "Maddie",
	 price: 100

}]

puts hash

array1 = ["kitter", "Maddie"]


while x < 2 do
	hash.each do |test|
		if test[:name] == array1[x]
			total_price = test[:price] + total_price
			x = x+1
		end
	end
end

puts total_price
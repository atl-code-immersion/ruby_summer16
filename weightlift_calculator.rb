def weight_check(lbs) 
	# is the desired weight higher than weight of bar?
	if lbs > 45
		return true
	else
		return false
	end
end

def divisible_by_5(lbs)
	# is the desired weight is divisible by 5
	# (because our plates are in weights divisible by 5)
	if lbs%5 == 0
		return true
	else
		return false
	end
end

def plate_check(num, each_side)
	# see if our "each side" weight can be divided
	# by certain plate weight (num)
	# "each side" weight is then adjusted by
	# how much weight in plates has been added
	if each_side / num >= 1
		puts "#{each_side/num} plates of #{num}"
		each_side = each_side - (num * (each_side/num))
	end
	return each_side
end

# program starts here with input prompt
print "Enter desired weight (in lbs.) to load on bar: "
d_w = gets.chomp.to_i # desired weight

while !weight_check(d_w)
	# until they give us a weight above 45, ask for new weight
	print "The bar itself weights 45 lbs. Please choose a weight above that: "
	d_w = gets.chomp.to_i
end

while !divisible_by_5(d_w)
	# until they give us a weight that 
	# ends in 0 or 5, ask for new weight
	print "Enter a weight in increments of 5 lbs: "
	d_w = gets.chomp.to_i
end

# total plate weight is the desired 
# weight minus the bar which weighs 45
p_w = d_w - 45 

# to have an even amount of weight on each side
# of bar, the plate weight must be divisible by 10
if p_w%10 != 0
	puts "That weight is not possible with our current setup"
	puts "Let me bump it up 5 lbs to #{d_w + 5}"
	p_w += 5
end

# now we can just focus on a single side, 
# since each side will have equal amount
# of plates on each side
each_side = p_w/2

# see how we can split up the "each side"
# weight, by checking that amount against
# each single plate weight, then adjust
# the "each side" weight to reflect that
# you've already got a certain amount of 
# weight already on the bar
each_side = plate_check(45, each_side)

each_side = plate_check(35, each_side)

each_side = plate_check(25, each_side)

each_side = plate_check(15, each_side)

each_side = plate_check(10, each_side)

plate_check(5, each_side)
# we didn't reset each_side because
# at this point, it should equal zero


#-----------------------------------------------------------#
# Below is  the long way...does the same thing as right 
# above, and I could probably just delete it, but I worked
# so hard on it! *wipes away a tear*

# if each_side / 45 >= 1
# 	puts "#{each_side/45} plates of 45"
# 	each_side = each_side - (45 * (each_side/45))
# end

# if each_side / 35 >= 1
# 	puts "#{each_side/35} plates of 35 "
# 	each_side = each_side - (35 * (each_side/35))
# end

# if each_side / 25 >= 1
# 	puts "#{each_side/25} plates of 25 "
# 	each_side = each_side - (25 * (each_side/25))
# end

# if each_side / 15 >= 1
# 	puts "#{each_side/15} plates of 15 "
# 	each_side = each_side - (15 * (each_side/15))
# end

# if each_side / 10 >= 1
# 	print "#{each_side/10} plates of 10 "
# 	each_side = each_side - (10 * (each_side/10))
# end

# if each_side / 5 >= 1
# 	puts "#{each_side/5} plates of 5 "
# 	each_side = each_side - (5 * (each_side/5))
# end
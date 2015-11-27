require 'pry'

class CoffeeCup

	attr_accessor :cup, :coffee

	def initialize(cup = 12, coffee = 8)
		@cup = cup
		@coffee = coffee
	end

	def sip!
		if @coffee == 0
			puts "No more coffee left dude! grab another cup of joe at Cafe Nero"
		else
			@coffee -= 2 
		end
	end

	def spill!
		if @coffee == 0
			puts "feuwf we didn't spill anything"
		else
			amount_of_coffee_spilled = @coffee
			@coffee = 0
			puts "dude you spilled #{amount_of_coffee_spilled} oz of coffee, come on brah"
		end
	end

	def refill!
		amount_to_refill = (@cup - 2)
		if @coffee == 0
			@coffee = amount_to_refill
		else
			new_amount_to_refill = (amount_to_refill - @coffee)
			@coffee += new_amount_to_refill
		end
	end
end

new_coffee = CoffeeCup.new()
new_coffee.refill!

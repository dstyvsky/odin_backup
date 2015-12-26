module Enumerable
	def my_each
		return self unless block_given?
		for i in self
			yield(i)
		end
	end

	def my_each_with_index
		return self unless block_given?
		counter = 0
		for i in self
			yield i, counter
			counter += 1
		end
	end

	def my_select
		return self unless block_given?
		result = []
		for i in self
			result << i if yield i
		end
		return result
	end

	def my_all?
		return self unless block_given?
		bool = true
		for i in self
			bool = false unless yield i
		end
		return bool
	end

	def my_any?
		return self unless block_given?
		bool = false
		for i in self
			bool = true if yield i
		end
		return bool
	end

	def my_none?
		return self unless block_given?
		bool = true
		for i in self
			bool = false if yield i
		end
		return bool
	end

	def my_map
		return self unless block_given?
		result = []
		for i in self
			result << (yield i)
		end
		return result
	end


end



list_of_numbers = [2,3,2,3,4,5,1,9]

list_of_numbers.my_each do |i|
	puts i
end

list_of_numbers.my_each_with_index do |num, index|
	puts num.to_s + " " + index.to_s
end

a = list_of_numbers.my_select{ |num| num < 4}
puts a

b = list_of_numbers.my_all?{ |num| num < 10}
puts b

c = list_of_numbers.my_any?{|num| num > 9}
puts c

d = list_of_numbers.my_none?{|num| num > 8}
puts d

e = list_of_numbers.my_map{|num| num ** 2}
puts e
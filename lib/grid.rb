class Grid

	attr_accessor :cells



	def initialize(puzzle)
		@puzzle = puzzle
		assign_values_to_cells
	end

	def assign_values_to_cells
		@cells = @puzzle.chars.map(&:to_i).inject_with_index([]) do |acc, val, ind|
			acc << Cell.new(val, ind)
		end
	end


end

class Array
	def inject_with_index acc=nil, &blk
		acc = acc.nil? ? self.shift : acc
		self.each_with_index { |el, i| acc = yield(acc, el, i) }; acc
	end
end

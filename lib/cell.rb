class Cell

	attr_accessor :value, :row, :col, :box

	def initialize(value, index)
		@value = value
		@row = index/ 9
		@col = index % 9
		@box = (@col / 3) * 3 + @row / 3
	end

	def filled_out
		@value != 0
	end

end

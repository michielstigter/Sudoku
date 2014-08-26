require 'cell'

describe Cell do
	it 'knows it own row and column and box' do
		cell1 = Cell.new(5,10)
		cell2 = Cell.new(9,74)
		cell3 = Cell.new(5,34)

		expect(cell1.row).to eq 1
		expect(cell2.row).to eq 8
		expect(cell3.row).to eq 3



	end

	it "knows if it's solved" do
		cell = Cell.new(0,10)
		expect(cell.filled_out).to eq false
		cell = Cell.new(1,10)
		expect(cell.filled_out).to eq true
	end
end

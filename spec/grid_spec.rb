require 'grid'
require 'cell'

describe Grid do
	context 'initialization' do
		let(:puzzle) {'015003002000100906270068430490002017501040380003905000900081040860070025037204600'}
		let(:grid) {Grid.new(puzzle)}


		it 'should have 81 cells' do
			expect(grid.cells.count).to eq 81
		end

		it 'when initialized it should contain an array of cells' do
			expect(grid.cells[0]).to be_a Cell
			expect(grid.cells[0].value).to be 0
			expect(grid.cells[2].value).to be 5
		end

		it 'should have a solved second cell with value 1' do
			grid.assign_values_to_cells
			expect(grid.cells[1].value).to eq 1
			expect(grid.cells[2].value).to eq 5
		end

	end
end

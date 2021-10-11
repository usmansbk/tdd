require_relative 'solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  describe '#factorial' do
    context '0 and positive integers' do
      it 'should return 1 when N is 0' do
        result = @solver.factorial 1
        expect(result).to eq(1)
      end

      it 'should return multiplication of all integers from 1 to N' do
        result = @solver.factorial 5
        expect(result).to eq(1 * 2 * 3 * 4 * 5)
      end
    end

    it 'should raise an exception for negative integers' do
      expect { @solver.factorial(-5) }.to raise_error
    end
  end
end

require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  describe '#factorial' do
    context '0 and positive integers' do
      it 'should return 1 when N is 0' do
        result = @solver.factorial 0
        expect(result).to eq(1)
      end

      it 'should return multiplication of all integers from 1 to N' do
        result = @solver.factorial 5
        expect(result).to eq(1 * 2 * 3 * 4 * 5)
      end
    end

    context 'negative integers' do
      it 'should raise an exception' do
        expect { @solver.factorial(-5) }.to raise_exception
      end
    end
  end

  describe '#reverse' do
    it 'should return the reversed word' do
      expect(@solver.reverse('hello')).to eq 'olleh'
    end
  end

  describe '#fizzbuzz' do
    context 'when N is divisible by 3' do
      it 'should return fizz' do
        expect(@solver.fizzbuzz(3)).to eq 'fizz'
      end
    end

    context 'when N is divisible by 5' do
      it 'should return buzz' do
        expect(@solver.fizzbuzz(5)).to eq 'buzz'
      end
    end

    context 'when N is divisible by 3 and 5' do
      it 'should return fizzbuzz' do
        expect(@solver.fizzbuzz(15)).to eq 'fizzbuzz'
      end
    end

    context 'any other case' do
      it 'should return N as a string' do
        expect(7).to eq '7'
      end
    end
  end
end

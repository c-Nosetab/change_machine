require 'rspec'

class Fizzbuzz
  def output(number)

    return 'FizzBuzz' if number % 15 == 0
    return 'Buzz' if number % 5 == 0
    return 'Fizz' if number % 3 == 0
    number

  end

  def go
    (1..100).each do |number|
      puts output(number)
    end
  end
end

count = Fizzbuzz.new

count.go





RSpec.describe Fizzbuzz do

  let(:fizzbuzz) { Fizzbuzz.new }


  describe '#output' do
    it 'should return 1 for the number 1' do
      expect(fizzbuzz.output(1)).to eq(1)
    end

    it 'should return 2 for the number 2' do
      expect(fizzbuzz.output(2)).to eq(2)
    end

    it 'should return 3 for the number 3' do
      expect(fizzbuzz.output(3)).to eq('Fizz')
    end

    it 'should return 4 for the number 4' do
      expect(fizzbuzz.output(4)).to eq(4)
    end

    it 'should return 5 for the number 5' do
      expect(fizzbuzz.output(5)).to eq('Buzz')
    end

    it 'should return 6 for the number 6' do
      expect(fizzbuzz.output(6)).to eq('Fizz')
    end

    it 'should return 7 for the number 7' do
      expect(fizzbuzz.output(7)).to eq(7)
    end

    it 'should return 8 for the number 8' do
      expect(fizzbuzz.output(8)).to eq(8)
    end

    it 'should return 9 for the number 9' do
      expect(fizzbuzz.output(9)).to eq('Fizz')
    end

    it 'should return 10 for the number 10' do
      expect(fizzbuzz.output(10)).to eq('Buzz')
    end

    it 'should return 11 for the number 11' do
      expect(fizzbuzz.output(11)).to eq(11)
    end

    it 'should return 12 for the number 12' do
      expect(fizzbuzz.output(12)).to eq('Fizz')
    end

    it 'should return 13 for the number 13' do
      expect(fizzbuzz.output(13)).to eq(13)
    end

    it 'should return 14 for the number 14' do
      expect(fizzbuzz.output(14)).to eq(14)
    end

    it 'should return 15 for the number 15' do
      expect(fizzbuzz.output(15)).to eq("FizzBuzz")
    end

    it 'should return 30 for the number 30' do
      expect(fizzbuzz.output(30)).to eq("FizzBuzz")
    end

    it 'should return 33 for the number 33' do
      expect(fizzbuzz.output(33)).to eq('Fizz')
    end

    it 'should return 73 for the number 73' do
      expect(fizzbuzz.output(73)).to eq(73)
    end


    it 'should return 55 for the number 55' do
      expect(fizzbuzz.output(55)).to eq('Buzz')
    end

    it 'should return 75 for the number 75' do
      expect(fizzbuzz.output(75)).to eq("FizzBuzz")
    end




  end

end
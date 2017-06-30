require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end



  def find_hypotenuse(side_1, side_2)
    Math.sqrt(side_1 * side_1 + side_2 * side_2)
  end

end


RSpec.describe Calculator do

  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      expect(calculator.add(3,1)).to eq(4)
    end
  end

  describe '#subtract' do
    it 'should return the difference of two numbers' do
      calculator = Calculator.new
      expect(calculator.subtract(3,1)).to eq(2)
    end
  end

  describe '#multiply' do
    it 'should return the product of two numbers' do
      calculator = Calculator.new
      expect(calculator.multiply(3,7)).to eq(21)
    end
  end

  describe '#divide' do
    it 'should return the quotient of two numbers' do
      calculator = Calculator.new
      expect(calculator.divide(6,2)).to eq(3)
    end
  end

  describe '#square' do
    it 'should return the product of 1 number and itself' do
      calculator = Calculator.new
      expect(calculator.square(12)).to eq(144)
    end
  end

  describe '#power' do
    it 'should return the power of 2 numbers' do
      calculator = Calculator.new
      expect(calculator.power(3, 3)).to eq(27)
    end
  end

  describe '#find_hypotenuse' do
    it 'should find the hypotenuse of a triangle with the length of 2 smaller sides' do
      calculator = Calculator.new
      expect(calculator.find_hypotenuse(3,4)).to eq(5)
    end
  end
end


calculator = Calculator.new

puts calculator.find_hypotenuse(15,17)



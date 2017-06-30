# Exercise: Pair up on the following using ‘ping-pong’ style: i.e. Developer A creates a test, Developer B writes the code, Developer B writes the next test, Developer A writes the code. Use only one of your group’s laptops for this exercise, and take turns driving. You will be creating a method that will take a number of cents and return an array of coins that will be your change. The goal is to return as few coins as possible. Assume that the highest denomination of coins will be a quarter (25 cents). For example: If the method receives 119, the result will be [25, 25, 25, 25, 10, 5, 1, 1, 1, 1]


require 'rspec'

class ChangeMachine

  def change(number)
    coins = []
    array = [25, 10, 5, 1]
    index = 0

    until number == 0
      if number >= array[index]
        coins << array[index]
        number -= array[index]
        index = 0
      else
        index += 1
      end
    end

    # until number == 0
    #   if number >= 25
    #     coins << 25
    #     number -= 25
    #   elsif number >= 10
    #     coins << 10
    #     number -= 10
    #   elsif number >= 5
    #     coins << 5
    #     number -= 5
    #   else
    #     coins << 1
    #     number -= 1
    #   end
    # end

    coins
  end
end


RSpec.describe ChangeMachine do
  describe '#change' do

    it 'should return [1] when given 1' do
      machine = ChangeMachine.new
      expect(machine.change(1)).to eq([1])
    end

    it 'should return [1, 1] when given 2' do
      machine = ChangeMachine.new
      expect(machine.change(2)).to eq([1,1])
    end

    it 'should return [1, 1, 1] when given 3' do
      machine = ChangeMachine.new
      expect(machine.change(3)).to eq([1,1,1])
    end

    it 'should return [1, 1, 1, 1] when given 4' do
      machine = ChangeMachine.new
      expect(machine.change(4)).to eq([1,1,1,1])
    end

    it 'should return [5] when given 5' do
      machine = ChangeMachine.new
      expect(machine.change(5)).to eq([5])
    end

    it 'should return [5,1] when given 6' do
      machine = ChangeMachine.new
      expect(machine.change(6)).to eq([5, 1])
    end

    it 'should return [5,1,1] when given 7' do
      machine = ChangeMachine.new
      expect(machine.change(7)).to eq([5,1,1])
    end

    it 'should return [10] when given 10' do
      machine = ChangeMachine.new
      expect(machine.change(10)).to eq([10])
    end

    it 'should return [10, 1] when given 11' do
      machine = ChangeMachine.new
      expect(machine.change(11)).to eq([10, 1])
    end

    it 'should return [10, 1, 1, 1, 1] when given 14' do
      machine = ChangeMachine.new
      expect(machine.change(14)).to eq([10, 1,1,1,1])
    end

    it 'should return [10, 5] when given 15' do
      machine = ChangeMachine.new
      expect(machine.change(15)).to eq([10, 5])
    end

    it 'should return [10, 10] when given 20' do
      machine = ChangeMachine.new
      expect(machine.change(20)).to eq([10, 10])
    end

    it 'should return [10, 10, 1, 1, 1] when given 23' do
      machine = ChangeMachine.new
      expect(machine.change(23)).to eq([10,10,1,1,1])
    end

    it 'should return [25] when given 25' do
      machine = ChangeMachine.new
      expect(machine.change(25)).to eq([25])
    end

    it 'should return [25, 1] when given 26' do
      machine = ChangeMachine.new
      expect(machine.change(26)).to eq([25, 1])
    end

    it 'should return [25, 25] when given 50' do
      machine = ChangeMachine.new
      expect(machine.change(50)).to eq([25, 25])
    end

    it 'should return [25, 25, 25, 10, 10, 1, 1, 1, 1] when given 99' do
      machine = ChangeMachine.new
      expect(machine.change(99)).to eq([25, 25, 25, 10, 10, 1, 1, 1, 1])
    end

    it 'should return [25, 25, 25, 25, 10, 5, 1, 1, 1, 1] when given 119' do
      machine = ChangeMachine.new
      expect(machine.change(119)).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end


  end
end
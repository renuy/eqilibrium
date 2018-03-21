require './equilibrium'
describe Equilibrium do
  describe "order n square" do
    it "should return an array" do
      input_arr = [-7, 1, 5, 2, -4, 3, 0]
      eq = Equilibrium.new
      op = eq.process_nsquare(input_arr)
      op.should eql([3, 6])
    end
    it "should return Empty Array, for empty input " do
      input_arr = []
      eq = Equilibrium.new
      op = eq.process_nsquare(input_arr)
      op.should eql([])
    end
    it "should return  empty arr for input Array of length 1" do
      input_arr = [7]
      eq = Equilibrium.new
      op = eq.process_nsquare(input_arr)
      op.should eql([])
    end

    it "should return [0] for Array, for 2 element input in equilibrium " do
      input_arr = [2,2]
      eq = Equilibrium.new
      op = eq.process_nsquare(input_arr)
      op.should eql([])
    end

    it "should return empty array, for 2 element input not equal " do
      input_arr = [2,3,2]
      eq = Equilibrium.new
      op = eq.process_nsquare(input_arr)
      op.should eql([1])
    end
  end

  describe "order 2n " do
    it "should return an array" do
      input_arr = [-7, 1, 5, 2, -4, 3, 0]
      eq = Equilibrium.new
      op = eq.process_2n(input_arr)
      op.should eql([3, 6])
    end
    it "should return Empty Array, for empty input " do
      input_arr = []
      eq = Equilibrium.new
      op = eq.process_2n(input_arr)
      op.should eql([])
    end
    it "should return  empty arr for input Array of length 1" do
      input_arr = [7]
      eq = Equilibrium.new
      op = eq.process_2n(input_arr)
      op.should eql([])
    end

    it "should return [0] for Array, for 2 element input in equilibrium " do
      input_arr = [2,2]
      eq = Equilibrium.new
      op = eq.process_2n(input_arr)
      op.should eql([])
    end

    it "should return empty array, for 2 element input not equal " do
      input_arr = [2,3,2]
      eq = Equilibrium.new
      op = eq.process_2n(input_arr)
      op.should eql([1])
    end
  end
end



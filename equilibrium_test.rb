require './equilibrium'
describe Equilibrium do
  it "should return an array" do
    input_arr = [-7, 1, 5, 2, -4, 3, 0]
    eq = Equilibrium.new
    op = eq.process(input_arr)
    op.should eql([3, 6])
  end
  it "Array of lenght 1 is always in equilibrium" do
    input_arr = [7]
    eq = Equilibrium.new
    op = eq.process(input_arr)
    op.should eql([0])
  end
  it "Empty Array, for empty input " do
    input_arr = []
    eq = Equilibrium.new
    op = eq.process(input_arr)
    op.should eql([])
  end

end



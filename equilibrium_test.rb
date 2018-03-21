require './equilibrium'
describe Equilibrium do
  it "should return an array" do
    input_arr = [-7, 1, 5, 2, -4, 3, 0]
    eq = Equilibrium.new
    op = eq.process(input_arr)
    op.should equal([3, 6])
  end
end



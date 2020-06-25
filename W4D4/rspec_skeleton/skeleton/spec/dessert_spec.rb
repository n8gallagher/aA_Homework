require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:sundae) {Dessert.new("ice cream", 1, "chef")}
  let(:brownie) {Dessert.new("baked", "big", "chef")}
  let(:cake) {Dessert.new("baked", 13, "chef")}
  
  describe "#initialize" do
    it "sets a type" do
      expect(sundae.type).to eq('ice cream')
    end
    it "sets a quantity" do
      expect(sundae.quantity).to eq(1)
    end

    it "starts ingredients as an empty array" do
      expect(sundae.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{Dessert.new("baked", "big", "chef")}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      sundae.add_ingredient("jimmies")
      expect(sundae.ingredients.empty?).to be(false)
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      sundae.add_ingredient("jimmies")
      sundae.add_ingredient("nuts")
      sundae.add_ingredient("fudge")
      sundae.add_ingredient("marshmallows")
      sundae.add_ingredient("cake")
      sundae.add_ingredient("peanut butter")
      sundae.mix!
      expect(sundae.ingredients).to_not eq(["jimmies", "nuts", "fudge", "marshmallows", "cake", "peanut butter"])
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      cake.eat(1)
      expect(cake.quantity).to eq(12)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { cake.eat(20) }.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(cake.serve).to include("Chef")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(cake.make_more).to eq(chef.bake(cake))
    end
  end
end

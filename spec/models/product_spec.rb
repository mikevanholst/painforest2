require 'spec_helper'


  
describe Product do
  let!(:nilly) {Product.create}
  let!(:product) {Product.create(name: "Widget", description: "Ultimate gadget", price_in_cents: 1499)}

  it "must have a name" do
    nilly.name.should_not be_true
  end
  
  it "must have a description" do
    nilly.description.should_not be_true 
  end

  it "must have a price" do
    nilly.price_in_cents.should_not be_true 
  end

  it "should be valid with name, description and price present" do
    product.valid?.should be_true
  end  

  it "must have an integer for price" do
    product.price_in_cents.should be_an(Integer)
  end 
   
end

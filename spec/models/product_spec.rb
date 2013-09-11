require 'spec_helper'

describe Product do
  it "must have a name" do
    product = Product.new
    product.should_not be_valid

  end
      
end

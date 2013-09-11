require 'spec_helper'


  
describe Product do
  let!(:nilly) {Product.create}

  it "must have a name" do
    nilly.should_not be_valid
  end
  

end

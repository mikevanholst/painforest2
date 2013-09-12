class Product < ActiveRecord::Base

  attr_accessor :name
  validates :name, :description, :price_in_cents, presence: true
  validates :price_in_cents, numericality: {only_integer:true}



end

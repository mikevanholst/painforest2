class Product < ActiveRecord::Base

  attr_accessor :name
  validates :name, presence: true



end

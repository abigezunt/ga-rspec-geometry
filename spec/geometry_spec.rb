require 'spec_helper'
require_relative '../lib/geometry'

describe Geometry::Triangle, "#Perimeter" do
  
  it "should have a method called perimeter" do
    should respond_to :perimeter
  end

  it "should return a numeric value when called on a triangle object"
    a_triangle = Geometry::Triangle.new(3, 4, 5)
    p = a_triangle.perimeter
    p.should eq 12
  end
  

end


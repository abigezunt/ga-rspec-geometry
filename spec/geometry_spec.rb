require 'spec_helper'
require_relative '../lib/geometry'

describe Geometry::Triangle do

# as defined by me, for testing:
  let(:a) {3}
  let(:b) {4}
  let(:c) {5}
  let(:perimeter) {12}
  let(:area) {6}

# create new triangle using my code, and test it against
# what I state to be true, above:

  subject {Geometry::Triangle.new(3, 4, 5)}

  it "should have a perimeter" do
		subject.perimeter.should eq perimeter
	end

	it "should have an area" do
		subject.area.should eq area
	end

	it "should be valid" do
		subject.valid?.should be true
	end

	# test attr_accessor variables:

	its(:a) { should eq 3}
	its(:b) { should eq 4}
	its(:c) { should eq 5}

# test methods by calling self.perimeter and comparing it
# to the values defined in "let" above:
	its(:perimeter) { should eq perimeter}
	its(:area) { should eq area}

	its(:sides) { should eq [a, b, c]}

	# non_example {Geometry::Triangle.new(2, 1, 8)}

	# it "should be invalid' " do
	# 	non_example.valid?.should be false
	# end

end

describe Geometry::Rectangle do
	let(:length) {6}
	let(:width) {4}
	let(:perimeter) {20}
	let(:area) {24}

	subject{Geometry::Rectangle.new(6, 4)}

	it "should have a perimeter" do
		subject.perimeter.should eq perimeter
	end

	it "should have an area" do
		subject.area.should eq area
	end

	its(:length) { should eq 6}
	its(:width) { should eq 4 }

	its(:perimeter) { should eq 20}
	its(:area) { should eq 24 }

end

describe Geometry::Circle do

	let(:radius) {5}
	let(:area) {25 * Math::PI}
	let(:perimeter) {10 * Math::PI}

	subject{Geometry::Circle.new(5)}

	it "should have a perimeter" do
	  subject.perimeter.should eq perimeter
	end

	it "should have an area" do
		subject.area.should eq area
	end

	its(:radius) {should eq 5}

end




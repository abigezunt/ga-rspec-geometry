module Geometry

	class Triangle
		attr_accessor :sideA, :sideB, :sideC, :sides

		def initialize(sideA, sideB, sideC)
			@sideA = sideA
			@sideB = sideB
			@sideC = sideC

			@sides = [@sideA, @sideB, @sideC]
			sides.sort!
		end

		def perimeter
			self.sides.inject(0) {|sum, side| sum + side }
		end



	end

	class Rectangle
	end

	class Circle
	end

end

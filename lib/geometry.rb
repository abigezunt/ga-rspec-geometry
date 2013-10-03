module Geometry

	class Triangle
		attr_accessor :a, :b, :c, :sides

		def initialize(sideA, sideB, sideC)
			@a = sideA
			@b = sideB
			@c = sideC
			@sides = [@a, @b, @c]
			sides.sort!
		end

		def valid?
				if @sides[0] + @sides[1] <= @sides[2]
				false
			else 
				true
			end
		end

		def perimeter
			self.sides.inject(0) {|sum, side| sum + side }
		end

		def area
			p = (self.perimeter / 2.0)
			Math.sqrt( p * (p - @a) * (p - @b) * (p - @c) )
		end

	end

	class Rectangle
		attr_accessor :length, :width

		def initialize(length, width)
			@length = length
			@width = width
		end

		def area
			@length * @width
		end

		def perimeter
			(@length * 2) + (@width * 2)
		end
	end

	class Circle
		attr_accessor :radius

		def initialize(radius)
			@radius = radius
		end

		def area
			(@radius ** 2) * Math::PI
		end

		def perimeter
			(@radius * 2) * Math::PI
		end

	end

end


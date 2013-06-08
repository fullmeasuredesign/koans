# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(x, y, z)
  x,y,z = [x,y,z].sort
  raise TriangleError, "Not a possible triangle" if ((x+y+z) == 0) || ((x+y) <= z)
  raise TriangleError, "Cannot have negative sides!" if [x,y,z].min < 0
  case [x,y,z].uniq.size
	when 1 then :equilateral
	when 2 then :isosceles
	else        :scalene
	end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

require_relative 'triangle'

class HellTriangle
  attr_reader :greater_position, :sum, :given_triangle

  def initialize
    @greater_position = 0
    @sum = []
    @given_triangle = Triangle.new
  end

  def verify_triangle matrix
    return false if matrix == nil

    matrix.each{ |elem| @given_triangle << elem }
    triangle = @given_triangle.is_triangle?

    if not triangle
      puts "Favor inserir um triangulo válido para o exercício"
      return false
    end
    @given_triangle
  end

  def sum_elements matrix
    triangle = verify_triangle matrix
    first_position_value = triangle.near_values_from_above(0, 0)

    matrix.each_with_index do |value, key|
      first_near_value = triangle.near_values_from_above(key, @greater_position)
      second_near_value = triangle.near_values_from_above(key, @greater_position + 1)

      if key == 0
        @sum << first_position_value
        next
      end

      if first_near_value > second_near_value
        @sum << first_near_value
      else
        @sum << second_near_value
        @greater_position += 1
      end
    end
    @sum.reduce(:+)
  end
end

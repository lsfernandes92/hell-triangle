require_relative 'hell_triangle'

# Given example
example = [[6],[3,5],[9,7,1],[4,6,8,4]]

hell_triangle = HellTriangle.new
result = hell_triangle.sum_elements example
puts "Resultado: #{result}"

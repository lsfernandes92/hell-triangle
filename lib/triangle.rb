class Triangle
  attr_reader :matrix

  def initialize
    @matrix = []
  end

  def <<(matrix)
   @matrix << matrix if matrix
  end

  def total_lines
    empty? ? 0 : @matrix.size
  end

  def empty?
    return true if @matrix[0].nil?
    @matrix[0][0].nil? ? true : false
  end

  def near_values_from_above(linha, element_atual)
    @matrix[linha][element_atual]
  end

  def is_triangle?
    return false if empty?
    return false if total_lines == 1

    first_element = @matrix[0].size
    top_size = first_element

    @matrix.drop(1).each do |element|
      return false if top_size >= element.size
      top_size = element.size
    end
    true
  end
end

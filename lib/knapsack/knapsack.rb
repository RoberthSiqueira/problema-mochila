#
# Knapsack v1.3
#
# Cesar Torralvo
# Gabriel Caires
# Vitor Derobe
#

module Knapsack

  class Knapsack

    def self.knapsack_table(capacity, weights = [], values = [])

      capacity = capacity.gsub(/[\s\*]/, '').strip
      weights  = weights.compact.reject(&:blank?)
      values   = values.compact.reject(&:blank?)

      @wc_hsh = Hash[weights.zip values]

      matrix = []

      # Pega os pesos de cada item como Inteiros
      weights_int = weights.map do |item|
        item.to_i
      end

      (weights_int.max+1).times do |item| 
        matrix << Array.new(capacity.to_i+1, 0)
      end

      fill_table(matrix)
    end

    # Verifica os itens que entrarão na mochila
    def self.fill_table(matrix)
      countItem = 0
      matrix.each_with_index do |line, weight|
        line.each_with_index do |item, idx|
          
          if weight.to_i <= idx.to_i
            value = @wc_hsh[weight.to_s].to_i
            if weight == 0
              value = 0
            elsif value.nil?
              value = matrix[weight-1][idx]
            elsif weight.to_i < idx.to_i
              diff  = idx.to_i - weight.to_i
              value = value.to_i + matrix[weight-1][diff].to_i
            end
            
            if value < matrix[weight-1][idx].to_i
              value = matrix[weight-1][idx].to_i
            end
            
          else
            value = matrix[weight-1][idx]
          end

          #Item entrará na mochila
          matrix[weight][idx] = value.to_s
        end
      end

      # Exibe os itens
      matrix.each do |line|
        p line
      end

      find_itens(matrix)
    end

    def self.find_itens(matrix)
      i = matrix.size-1
      j = matrix.last.size-1

      result = []
      notResult = []

      begin 
        if matrix[i][j] != matrix[i-1][j]
          result << { i.to_s => @wc_hsh[i.to_s] }
          j -= i
          i -= 1
        else
          # Item não entrará na mochila
          notResult << { i.to_s => @wc_hsh[i.to_s] }
          i -= 1
        end
      end while i > 0

      return result, notResult, matrix
    end

  end
end

module Numerals
  # Contains basic conversion logic
  #
  class Converter
    
    class << self
      
      # Converts input to the words when the input is a number
      # The linguistics gem has as issue with negative numbers outputting result without space.
      #
      # @param [ String ] input
      # 
      # @return [ String ] humanized input
      def convert(input)
        if input.present? 
          input.en.numwords.gsub('minus', 'minus ')
        else
          ''
        end
      end
    end
  end
end
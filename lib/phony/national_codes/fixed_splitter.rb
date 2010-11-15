module Phony
  
  module NationalCodes
    
    class FixedSplitter
      
      @mapping = {}
      
      # Get a splitter for the given format.
      #
      # Caches the created splitter for the given format.
      #
      def self.instance_for size
        @mapping[size] ||= new(size)
      end
      
      def initialize size
        @size = size
      end
      
      # Takes a national number and splits it into ndc and rest.
      #
      def split national_number
        [national_number.slice!(0...@size), national_number]
      end
      
    end
    
  end
  
end
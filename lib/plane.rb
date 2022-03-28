require_relative 'airport'

class Plane
    attr_reader :airborn
    def initialize
        @airborn = false
    end

    def take_off
        @airborn = true
    end
end

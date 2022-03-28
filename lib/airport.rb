require_relative 'plane'
require_relative 'weather'

class Airport
    attr_reader :hangar
    HANGAR_CAPACITY = 5
    STORMY = Weather.new.stormy?

    def initialize
        @hangar = []
    end

    def land_plane(plane)
        if @hangar.count < HANGAR_CAPACITY
            @hangar.push(plane)
        else 
            raise "Airport full"
        end
    end

    def take_off(plane)
        if STORMY == false
            @hangar.pop { |p| p = plane}
            plane.take_off
        else
            raise "Bad weather: can't take off"
        end
    end

    private 
end
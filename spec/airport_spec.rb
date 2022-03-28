require 'airport'
require 'weather'

describe Airport do
    it '#land_plane to instruct plane to land' do
        plane = Plane.new
        airport = Airport.new
        airport.land_plane(plane)
        expect(airport.hangar[-1]).to eq plane
    end

    it "#take_off to instruct plane to take off and confirm it's no longer in the airport" do
        plane = Plane.new
        airport = Airport.new
        airport.land_plane(plane)
        expect { airport.hangar.not_to include(plane) }
    end

    it "#land_plane to not work when airport is full" do
        plane = Plane.new
        airport = Airport.new
        5.times do airport.land_plane(Plane.new) end
        expect{ airport.land_plane(plane) }.to raise_error("Airport full")
    end

    it "#take_off to raise error if stormy" do
        plane = Plane.new
        airport = Airport.new
        take_off = double(STORMY=> false)
        expect{ airport.take_off(plane) }.to raise_error("Bad weather: can't take off")
    end
end
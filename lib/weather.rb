class Weather
    def stormy?
        x = rand(1..10)
        if x == 10
            return true
        else
            return false
        end
    end
end
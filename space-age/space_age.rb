module SpaceAge
  class Age
    attr_reader :seconds
    
    YEAR = 31557600.00

    def on_earth(time)
      (seconds/YEAR).round(2)
    end

    def on_mercury
    end
    
    def on_venus
    end

    def on_mars
    end
    
    def on_jupiter
    end

    def on_saturn
    end

    def on_uranus
    end

    def on_neptune
    end
  end
end
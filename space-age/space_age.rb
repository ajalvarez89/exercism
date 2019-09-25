require 'byebug'

class SpaceAge
  attr_reader :seconds
  
  PERIOD = {
        :hearth => 365.25,
        :mercury => 0.2408467,
        :venus => 0.61519726,
        :mars => 1.8808158,
        :jupiter => 11.862615,
        :saturn => 29.447498,
        :uranus => 84.016846,
        :neptune => 164.79132,
      }

  def initialize (seconds)
    @seconds = seconds
  end

  def on_earth
    @seconds/calculate_sec(PERIOD[:hearth])
  end

  def on_mercury
    @seconds/calculate_sec(calculate_day(PERIOD[:mercury]))
  end
  
  def on_venus
    @seconds/calculate_sec(calculate_day(PERIOD[:venus]))
  end

  def on_mars
    @seconds/calculate_sec(calculate_day(PERIOD[:mars]))
  end
  
  def on_jupiter
    @seconds/calculate_sec(calculate_day(PERIOD[:jupiter]))
  end

  def on_saturn
    @seconds/calculate_sec(calculate_day(PERIOD[:saturn]))
  end

  def on_uranus
    @seconds/calculate_sec(calculate_day(PERIOD[:uranus]))
  end

  def on_neptune
    @seconds/calculate_sec(calculate_day(PERIOD[:neptune]))
  end

  private

  def calculate_day(period)
    days = (period * 365.25)/1
  end

  def calculate_sec(days)
    days * 86400.00
  end
end
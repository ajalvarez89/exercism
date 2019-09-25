require 'byebug'

class SpaceAge

  attr_reader :seconds

  PERIOD_HEARD = 31557600.00
  PERIOD = {
        :hearth => PERIOD_HEARD,
        :mercury => PERIOD_HEARD * 0.2408467,
        :venus => PERIOD_HEARD * 0.61519726,
        :mars => PERIOD_HEARD * 1.8808158,
        :jupiter => PERIOD_HEARD * 11.862615,
        :saturn => PERIOD_HEARD * 29.447498,
        :uranus => PERIOD_HEARD * 84.016846,
        :neptune => PERIOD_HEARD * 164.79132
      }

  def initialize (seconds)
    @seconds = seconds
  end

  def on_earth
    @seconds/PERIOD[:hearth]
  end

  def on_mercury
    @seconds/PERIOD[:mercury]
  end
  
  def on_venus
    @seconds/PERIOD[:venus]
  end

  def on_mars
    @seconds/PERIOD[:mars]
  end
  
  def on_jupiter
    @seconds/PERIOD[:jupiter]
  end

  def on_saturn
    @seconds/PERIOD[:saturn]
  end

  def on_uranus
    @seconds/PERIOD[:uranus]
  end

  def on_neptune
    @seconds/PERIOD[:neptune]
  end
end
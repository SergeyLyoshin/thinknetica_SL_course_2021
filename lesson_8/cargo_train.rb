# frozen_string_literal: true

# Class for work with cargo trains
class CargoTrain < Train
  def initialize(number, carriages)
    super(number, :cargo, carriages)
  end
end

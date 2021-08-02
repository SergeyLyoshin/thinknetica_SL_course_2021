# frozen_string_literal: true

require './instances'
require './validation_error'

# Class for work with stations
class Station
  include Instances
  attr_reader :name, :trains

  NAME_PATTERN = /^[a-z]{3,}$/i.freeze

  def initialize(name)
    @name = name
    @trains = []
    validate!
    add(self)
  end

  def take(train)
    trains << train
  end

  def send_out(train)
    trains.delete(train)
  end

  def trains_with_type(type)
    trains.select { |train| train.type == type }
  end

  def each_train(&block)
    block_given? ? trains.each(&block) : trains
  end

  def valid?
    validate!
  rescue StandardError
    false
  end

  protected

  def validate!
    raise ValidationError, 'Name must contains 3 letters a-z or more' if name !~ NAME_PATTERN

    true
  end
end

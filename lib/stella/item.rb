class Stella::Item

  attr_accessor :value, :parameters

  def initialize(value, parameters = {})
    @value = value
    @parameters = parameters
  end

  def ==(other)
    self.class == other.class && self.value == other.value && self.parameters == other.parameters
  end

  def to_s
    "#{ Stella.serialize_bare_item(value) }#{ Stella.serialize_parameters(parameters) }"
  end
end

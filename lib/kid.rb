require_relative './dance_module.rb'
require_relative './class_methods_module.rb'
require_relative './fancy_dance.rb'

class Kid
  #adding class functionality
  extend FancyDance::ClassMethods

  #adding instance functionality
  include FancyDance::InstanceMethods

  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

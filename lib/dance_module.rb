module Dance
    def twirl
      "I'm twirling!"
    end
  
    def jump
      "Look how high I'm jumping!"
    end
  
    def pirouette
      "I'm doing a pirouette"
    end
  
    def take_a_bow
      "Thank you, thank you. It was a pleasure to dance for you all."
    end
  end

  class Kid
    include Dance
    extend MetaDancing
    attr_accessor :name
  
    def initialize(name)
      @name = name
    end
  end

  class Dancer
    include Dance
    extend MetaDancing
    attr_accessor :name
  
    def initialize(name)
      @name = name
    end
  end

  leighton = Dancer.new("Leighton")
  dennis = Dancer.new("Dennis")

  puts leighton.twirl
  puts dennis.jump
  puts Kid.metadata

#   module FancyDance
#     module InstanceMethods
  
#       def twirl
#         "I'm twirling!"
#       end
  
#       def jump
#         "Look how high I'm jumping!"
#       end
  
#       def pirouette
#         "I'm doing a pirouette"
#       end
  
#       def take_a_bow
#         "Thank you, thank you. It was a pleasure to dance for you all."
#       end
#     end
  
#     module ClassMethods
  
#       def metadata
#         "This class produces objects that love to dance."
#       end
#     end
#   end
#   class Dancer
#     extend FancyDance::ClassMethods
#     include FancyDance::InstanceMethods
#   end
#   class Kid
#     extend FancyDance::ClassMethods
#     include FancyDance::InstanceMethods
#   end  
module JIT
  class Package
    attr_accessor :packageId
    def initialize(packageId)
      @packageId = packageId
    end
  end
 
  class Letter < Package
     
    def initialize(packageId)
     super(packageId)
    end

    def to_s
      "Letter"
    end

  end

  class Box < Package
    attr_reader :height, :width, :depth
    def initialize(height, width, depth, id)
      super(id)
      @height = height
      @width = width
      @depth = depth
    end
   
    def to_s
      "Box with height #{@height} width #{@width} depth #{@depth}"
    end
   
  end

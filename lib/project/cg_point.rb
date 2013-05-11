class CGPoint

# Given an x or y coordinate, returns a point with the other coordinate set to
# the golden section
# @param options [hash] either the :x or :y coordinate, and optionally exponent
# @return [CGPoint] the new point
def self.golden_section(options)
  Golden_Sections.handler(Golden_Sections::CGPoint_relations, options, &Golden_Sections::CGPoint_proc)
end

# Returns a CGPoint with one or both coordinates as a golden section
# @param direction [Symbol] Which coordinate to modify - :x, :y, or :both, the default.
# @param exp [Integer] The exponent of the golden mean, defaults to 1
# @return [CGPoint] The new CGPoint
def golden_section(direction=:both, exp=1)
if direction==:both
CGPoint.new(self.x.golden_section(exp), self.y.golden_section(exp))
elsif direction==:x
CGPoint.new(self.x.golden_section(exp), self.y)
elsif direction==:y
CGPoint.new(self.x, self.y.golden_section(exp))
else
  raise "CGPoint: unknown direction #{direction}"
end
end

end

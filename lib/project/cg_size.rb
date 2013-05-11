class CGSize

# Given a width or height, returns a new CGSize object with the other
 # set to the golden section
# @param options [Hash] the width or height, and optionally exponent
# @return [CGSize] the new CGSize object
def self.golden_section(options)
Golden_Sections::handler(Golden_Sections::CGSize_relations, options, &Golden_Sections::CGSize_proc)
end

# Returns a new CGSize object with the width, height, or both modified
 #to conform to the golden section
# @param direction [Symbol] :width, :height, or :both, the default
# @param exp [Integer] the exponent of the golden mean, defaults to 1
# @return [CGSize] the new object
def golden_section(direction=:both, exp=1)
if direction==:both
CGSize.new(self.width.golden_section(exp), self.height.golden_section(exp))
elsif direction==:width
CGSize.new(self.width.golden_section(exp), self.height)
elsif direction==:height
CGSize.new(self.width, self.height.golden_section(exp))
else
  raise "CGSize#golden_section: unknown direction #{direction}"
end
end

end

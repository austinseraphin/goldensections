class CGRect

# Creates a CGRect with the proportions of the golden section
# @param options [Hash] The combination of size and height parameters, and optionally exponent.
 # :x, :y, or both
 # :width, :height, or both
 # The method fills in the missing attributes.
# @return [CGRect] the new object
def self.golden_section(options)
Golden_Sections::handler(Golden_Sections::CGRect_relations, options, &Golden_Sections::CGRect_proc)
end

 # Creates a new CGRect changing the width, height, or both in the proportion of
 #the golden section
# direction [Symbol] :width, :height, or :both, the dfeault
# @param exp [Integer] the exponent of the golden mean, deafults to 1
# @return [CGRect] the new object
def golden_section(direction=:both,  exp=1)
rect=self.dup
fixed=false
if direction==:width||direction==:both
rect.width=rect.width.golden_section(exp)
fixed=true
end
if direction==:height||direction==:both
rect.height=rect.height.golden_section(exp)
fixed=true
end
  raise "CGRect#golden_section: unknown direction: #{direction}" unless fixed
rect
end

# Splits a rectangle into two, with the proportion of the golden section
# @param direction [Symbol] :width or :height, this controls how to split the rectangle. Imagine folding a piece of paper along its width or length.
# @param greater [Symbol] controls which rectangle has the greater area, :first or :last. Defaults to :first.
# @return [Array] an array of the two CGRect objects
def golden_split(direction, greater=:first)
  raise "Golden_Section#golden_split: unknown direction #{direction}" unless [:width, :height].member?(direction)
  raise "Golden_Section.golden_split: Unknown greater section #{greater}" unless [:first, :last].member?(greater)
if greater==:first
exp=1
else
exp=2
end
rect1=self.golden_section(direction,exp)
if greater==:first
exp=1
else
exp=-1
end
if direction==:width
rect2=rect1.beside.width(rect1.width.golden_section(exp))
else
rect2=rect1.below.height(rect1.height.golden_section(exp))
end
[rect1,rect2]
end

end

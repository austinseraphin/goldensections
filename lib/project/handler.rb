# Golden_Sections handler for common methods

class Golden_Sections

# A common handler for golden_section methods
# @param relations [Hash] the set of relations to use
# @param options [Hash] the options passed by the user
# @param init [Proc] the initialization method to call
def self.handler(relations, options, &init)
options[:exponent]||=1
  relations.each do |relation1, relation2|
if options[relation1]&&!options[relation2]
options[relation2]=options[relation1].golden_section(options[:exponent])
elsif options[relation2]&&!options[relation1]
options[relation1]=options[relation2].golden_section(options[:exponent])
end
end
init.call(options)
end

# CGPoint initializer
CGPoint_proc=lambda {|options| CGPoint.new(options[:x], options[:y])} 

# CGSize initializer
CGSize_proc=lambda {|options| CGSize.new(options[:width], options[:height])} 

# CGRect initializer
CGRect_proc = lambda {|options| CGRect.new([options[:x], options[:y]], [options[:width], options[:height]])}

end

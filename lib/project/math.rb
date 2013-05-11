# Golden Sections mathematical methods

class Numeric

# Returns the golden section of a number
# @param exponent [Numeric] the exponent of the golden mean, defaults to 1
def golden_section(exponent=1)
self/(Golden_Sections::Golden_Mean**exponent)
end

end

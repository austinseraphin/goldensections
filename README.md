Golden Sections
https://github.com/austinseraphin/goldensections

Welcome to Golden Sections, a RubyMotion gem for creating views based
on the golden mean. I wrote this gem because using the golden mean
looks naturally beautiful. Instead of guessing or picking round
numbers, why not use something more appealing? Give your app the Midas
touch with Golden Sections!

## Installation

Add this line to your application's Gemfile:

    gem 'goldensections'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install goldensections

This gem depends on Geomotion.

## Usage

Firstly, the gem adds a method to the Numeric class called
golden_section(exponent) the parameter represents the exponent of the
golden mean to use, defaulting to 1.

It then adds golden_section class and instance methods to CGPoint,
CGSize, and CGRect. The class methods i.e. CGRect.golden_section take
a hash of options. The options depend on the class, but should include
enough information to create an object. For CGPoint this means
specifying either :x or :y. For CGSize this means specifying either
:width or :height. CGRect can take any combination of these options,
usually :x, :y, and either :width or :height. The methods then fill in
the missing attributes. They also take a :exponent option. For
example:

point=CGPoint.golden_section(x: 100) => CGPoint(100.0,
61.8033905029297) size=CGSize.golden_section(width: 100) =>
CGSize(100.0, 61.8033905029297) rect=CGRect.golden_section(x: 0, y: 0,
width: 100) => CGRect([0.0, 0.0], [100.0, 61.8033905029297])

The fifth exponent of the golden ratio comes out to 11.08. Instead of
making a label that takes up a tenth of the screen, you could try
this:

CGRect.golden_section(x: 0, y: 0, width: 100, exponent: 5) =>
CGRect([0.0, 0.0], [100.0, 9.01699829101562])

The instance methods take an existing object and return a new object
based on it. They take a direction, either :width or :height, and
optionally an exponent.

point.golden_section(:x) => CGPoint(61.8033905029297,
61.8033905029297) size.golden_section(:width) =>
CGSize(61.8033905029297, 61.8033905029297) rect.golden_section(:width)
=> CGRect([0.0, 0.0], [61.8033905029297, 61.8033905029297])

Finally, you can use the golden_split method to split a CGRect into
two. It has two parameters. First, specify the direction to split the
rectangle, either :width or :height. Imagine folding a piece of paper
along its width or length. The second parameter controls which section
should have the greater area, either :first or :last. It returns an
array containing the two CGRect objects.

rect=CGRect.new([0,0],[100,100]) => CGRect([0.0, 0.0], [100.0, 100.0])
rect.golden_split(:width) => [CGRect([0.0, 0.0], [61.8033905029297,
100.0]), CGRect([61.8033905029297, 0.  0], [38.1965942382812, 100.0])]
rect.golden_split(:height) => [CGRect([0.0, 0.0], [100.0,
61.8033905029297]), CGRect([0.0, 61.803390502929 7], [100.0,
38.1965942382812])] rect.golden_split(:height, :last) => [CGRect([0.0,
0.0], [100.0, 38.1966094970703]), CGRect([0.0, 38.196609497070 3],
[100.0, 61.8034210205078])]

And that should just about do it. Have fun making beautiful apps.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

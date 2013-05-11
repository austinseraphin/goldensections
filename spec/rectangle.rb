describe CGRect do
it "Makes a rectangle" do
CGRect.golden_section(x:1, y:1, width:1).height.should==1.golden_section
CGRect.golden_section(x:1, y:1, height:1).width.should==1.golden_section
end

it "makes a rectangle from another" do
rect=CGRect.new([0,0], [1,1])
rect.golden_section(:width).width.should==1.golden_section
rect.golden_section(:height).height.should==1.golden_section
end

it "splits a rectangle" do
rect=CGRect.new([0,0], [100,100])
[:width, :height].each do |direction|
[:first, :last].each do |greater|
result=rect.golden_split(direction, greater)
result.send(greater).send(direction).round(3).should==rect.send(direction).golden_section.round(3)
end
end
end

end

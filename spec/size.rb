describe CGSize do
it "makes a size" do
CGSize.golden_section(width: 1).height.should==1.golden_section
CGSize.golden_section(height: 1).width.should==1.golden_section
end

it "makes a size from an object" do
size=CGSize.new(1,1)
size2=size.golden_section
size2.width.should==1.golden_section
size2.height.should==1.golden_section
size2=size.golden_section(:width)
size2.width.should==1.golden_section
size2=size.golden_section(:height)
size2.height.should==1.golden_section
end

end

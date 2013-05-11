describe CGPoint do
it "makes a point" do
CGPoint.golden_section(x: 1).y.should==1.golden_section
CGPoint.golden_section(y: 1).x.should==1.golden_section
end

it "makes a point from an object" do
point=CGPoint.new(1,1)
point2=point.golden_section
point2.x.should==1.golden_section
point2.y.should==1.golden_section
point2=point.golden_section(:x)
point2.x.should==1.golden_section
point2=point.golden_section(:y)
point2.y.should==1.golden_section
end


end

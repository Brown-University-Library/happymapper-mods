require 'spec_helper'
require 'mods'

SAMPLE_MODS = '<?xml version="1.0"?>
<mods:mods xmlns:mods="http://www.loc.gov/mods/v3">
  <mods:titleInfo>
    <mods:title>Po&#xE9;try</mods:title>
  </mods:titleInfo>
</mods:mods>
'

describe Mods do
  it "should create a title" do
    m = Mods.new
    t = TitleInfo.new
    t.title = 'Poétry'
    m.title_info = t
    m.to_xml.should == SAMPLE_MODS
  end

  it "should parse a title" do
    m = Mods.parse(SAMPLE_MODS)
    m.title_info[0].title[0].should == 'Poétry'
  end

  it "should let you change a title" do
    m = Mods.parse(SAMPLE_MODS)
    m.title_info[0].title[0] = 'Péts'
    m.title_info[0].title[0].should == 'Péts'
  end

  it "should let you add a title" do
    m = Mods.parse(SAMPLE_MODS)
    t = TitleInfo.new
    t.title = ['Péts']
    m.title_info << t
    titles = []
    m.title_info.each { |title_info| titles << title_info.title[0] }
    titles.should == ['Poétry', 'Péts']
  end
end

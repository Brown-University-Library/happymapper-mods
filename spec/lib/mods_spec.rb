require 'spec_helper'
require 'mods'

SAMPLE_MODS = '<?xml version="1.0"?>
<mods:mods xmlns:mods="http://www.loc.gov/mods/v3">
  <mods:titleInfo>
    <mods:title>Po&#xE9;try</mods:title>
  </mods:titleInfo>
  <mods:name type="personal">
    <mods:namePart>Smith, Tom</mods:namePart>
    <mods:namePart type="date">1803 or 4-1860</mods:namePart>
    <mods:role>
      <mods:roleTerm type="text">creator</mods:roleTerm>
    </mods:role>
  </mods:name>
  <mods:typeOfResource>text</mods:typeOfResource>
  <mods:genre authority="aat">aat theses</mods:genre>
  <mods:originInfo displayLabel="origin info">
    <mods:place>
      <mods:placeTerm>USA</mods:placeTerm>
    </mods:place>
    <mods:dateIssued encoding="w3cdtf" qualifier="questionable">2018-01</mods:dateIssued>
    <mods:dateCreated encoding="w3cdtf" keyDate="yes">2008-02-03</mods:dateCreated>
  </mods:originInfo>
  <mods:language>
    <mods:languageTerm type="text">xyz</mods:languageTerm>
  </mods:language>
  <mods:physicalDescription>
    <mods:extent>viii, 208 p.</mods:extent>
    <mods:digitalOrigin>born digital</mods:digitalOrigin>
    <mods:note>note 1</mods:note>
  </mods:physicalDescription>
  <mods:abstract>Po&#xE9;try description...</mods:abstract>
  <mods:tableOfContents type="incomplete contents">ToC</mods:tableOfContents>
  <mods:targetAudience authority="local">audience</mods:targetAudience>
  <mods:note displayLabel="label" type="random Typ&#xE9;">random type note</mods:note>
  <mods:subject displayLabel="Display Label">
    <mods:topic>programming</mods:topic>
  </mods:subject>
  <mods:classification authority="local">classification</mods:classification>
  <mods:identifier type="type" displayLabel="label">identifier</mods:identifier>
  <mods:location>
    <mods:physicalLocation>Random location</mods:physicalLocation>
    <mods:holdingSimple>
      <mods:copyInformation>
        <mods:note>location note</mods:note>
      </mods:copyInformation>
    </mods:holdingSimple>
  </mods:location>
  <mods:accessCondition type="use and reproduction">To the extent possible under law, the person who associated CC0 with this work has waived all copyright and related or neighboring rights to this work.</mods:accessCondition>
  <mods:part>
    <mods:detail type="divid">
      <mods:number>div01</mods:number>
    </mods:detail>
  </mods:part>
  <mods:relatedItem type="host">
    <mods:identifier>test_id</mods:identifier>
  </mods:relatedItem>
</mods:mods>
'

describe Mods do
  it "should create sample elements" do
    m = Mods.new
    m.title_info = build_title_info
    m.name = build_name
    m.type_of_resource = build_type_of_resource
    m.genre = build_genre
    m.origin_info = build_origin_info
    m.language = build_language
    m.physical_description = build_physical_description
    m.abstract = build_abstract
    m.table_of_contents = build_table_of_contents
    m.target_audience = build_target_audience
    m.note = build_note
    m.subject = build_subject
    m.classification = build_classification
    m.identifier = build_identifier
    m.location = build_location
    m.access_condition = build_access_condition
    m.part = build_part
    m.related_item = build_related_item
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

  it "should parse typeOfResource" do
    m = Mods.parse(SAMPLE_MODS)
    m.type_of_resource[0].content.should == 'text'
  end
end

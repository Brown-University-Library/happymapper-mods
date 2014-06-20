require 'happymapper'
require './lib/mods_dates'
require './lib/mods_namespaces'

class TitleInfo
  include HappyMapper
  include ModsNamespace
  tag 'titleInfo'

  attribute :id, String, tag: 'ID'
  attribute :xlink, String
  attribute :type, String
  attribute :authority, String
  attribute :display_label, String, tag: 'displayLabel'
  has_many :title, String
end

class TypeOfResource
  include HappyMapper
  include ModsNamespace
  tag 'typeOfResource'

  attribute :collection, String
  attribute :manuscript, String
  attribute :display_label, String, tag: 'displayLabel'
  attribute :usage, String
  attribute :alt_rep_group, String, tag: 'altRepGroup'
  content :content, String
end

class Genre
  include HappyMapper
  include ModsNamespace
  tag 'genre'

  attribute :authority, String
  attribute :type, String
  attribute :display_label, String, tag: 'displayLabel'
  attribute :usage, String
  attribute :alt_rep_group, String, tag: 'altRepGroup'
  content :content, String
end

class PlaceTerm
  include HappyMapper
  include ModsNamespace
  tag 'placeTerm'

  attribute :type, String
  attribute :authority, String
  content :content, String
end
  
class Place
  include HappyMapper
  include ModsNamespace
  tag 'place'
 
  attribute :supplied, String
  has_many :place_term, PlaceTerm, tag: 'placeTerm'
end

class Publisher
  include HappyMapper
  include ModsNamespace
  tag 'publisher'

  attribute :supplied, String
  content :content, String
end
 

class Edition
  include HappyMapper
  include ModsNamespace
  tag 'edition'

  attribute :supplied, String
  content :content, String
end

class Frequency
  include HappyMapper
  include ModsNamespace
  tag 'frequency'

  attribute :authority, String
  content :content, String
end

class OriginInfo
  include HappyMapper
  include ModsNamespace
  tag 'originInfo'
  include ModsDates

  attribute :display_label, String, tag: 'displayLabel'
  has_many :place, Place
  has_many :publisher, Publisher
  has_many :date_issued, DateIssued, tag: 'dateIssued'
  has_many :date_created, DateCreated, tag: 'dateCreated'
  has_many :date_captured, DateCaptured, tag: 'dateCaptured'
  has_many :date_valid, DateValid, tag: 'dateValid'
  has_many :date_modified, DateModified, tag: 'dateModified'
  has_many :copyright_date, CopyrightDate, tag: 'copyrightDate'
  has_many :date_other, DateOther, tag: 'dateOther'
  has_many :edition, Edition
  has_many :issuance, String
  has_many :frequency, Frequency
end

class NamePart
  include HappyMapper
  include ModsNamespace
  tag 'namePart'

  attribute :type, String
  content :content, String
end

class RoleTerm
  include HappyMapper
  include ModsNamespace
  tag 'roleTerm'

  attribute :type, String
  attribute :authority, String
  content :content, String
end

class Role
  include HappyMapper
  include ModsNamespace
  tag 'role'

  has_many :role_term, RoleTerm, tag: 'roleTerm'
end

class Name
  include HappyMapper
  include ModsNamespace
  tag 'name'

  attribute :id, String, tag: 'ID'
  attribute :type, String
  attribute :authority, String
  has_many :name_part, NamePart, tag: 'namePart'
  has_many :display_form, String, tag: 'displayForm'
  has_many :role, Role
  has_many :description, String
end

class Identifier
  include HappyMapper
  include ModsNamespace
  tag 'identifier'

  attribute :type, String
  attribute :display_label, String, tag: 'displayLabel'
  attribute :invalid, String
  content :content, String
end

class LanguageTerm
  include HappyMapper
  include ModsNamespace
  tag 'languageTerm'

  attribute :type, String
  attribute :authority, String
  content :content, String
end

class Language
  include HappyMapper
  include ModsNamespace
  tag 'language'

  attribute :object_part, String, tag: 'objectPart'
  has_many :language_term, LanguageTerm, tag: 'languageTerm'
end

class Form
  include HappyMapper
  include ModsNamespace
  tag 'form'
  
  attribute :authority, String
  attribute :type, String
  content :content, String
end

class Extent
  include HappyMapper
  include ModsNamespace
  tag 'extent'

  attribute :supplied, String
  content :content, String
end

class Note
  include HappyMapper
  include ModsNamespace
  tag 'note'

  attribute :id, String, tag: 'ID'
  attribute :display_label, String, tag: 'displayLabel'
  attribute :type, String
  content :content, String
end

class PhysicalDescription
  include HappyMapper
  include ModsNamespace
  tag 'physicalDescription'

  attribute :display_label, String, tag: 'displayLabel'
  has_many :form, Form
  has_many :extent, Extent
  has_many :digital_origin, String, tag: 'digitalOrigin'
  has_many :note, Note
end

class Abstract
  include HappyMapper
  include ModsNamespace
  tag 'abstract'

  attribute :display_label, String, tag: 'displayLabel'
  attribute :type, String
  content :content, String
end

class TableOfContents
  include HappyMapper
  include ModsNamespace
  tag 'tableOfContents'

  attribute :type, String
  attribute :display_label, String, tag: 'displayLabel'
  content :content, String
end

class TargetAudience
  include HappyMapper
  include ModsNamespace
  tag 'targetAudience'

  attribute :authority, String
  attribute :display_label, String, tag: 'displayLabel'
  content :content, String
end

class Temporal
  include HappyMapper
  include ModsNamespace
  tag 'temporal'

  attribute :authority, String
  attribute :encoding, String
  attribute :point, String
  attribute :key_date, String, tag: 'keyDate'
  attribute :qualifier, String
  content :content, String
end

class Topic
  include HappyMapper
  include ModsNamespace
  tag 'topic'

  attribute :authority, String
  content :content, String
end

class Subject
  include HappyMapper
  include ModsNamespace
  tag 'subject'

  attribute :id, String, tag: 'ID'
  attribute :authority, String
  attribute :display_label, String, tag: 'displayLabel'
  has_many :topic, Topic
  has_many :geographic, String
  has_many :temporal, Temporal
  has_many :title_info, TitleInfo, xpath: '.'
  has_many :name, Name, xpath: '.'
end

class Classification
  include HappyMapper
  include ModsNamespace
  tag 'classification'

  attribute :authority, String
  attribute :display_label, String, tag: 'displayLabel'
  content :content, String
end

class PhysicalLocation
  include HappyMapper
  include ModsNamespace
  tag 'physicalLocation'

  attribute :authority, String
  content :content, String
end

class CopyInformation
  include HappyMapper
  include ModsNamespace
  tag 'copyInformation'

  #these elements should be ordered
  has_many :note, Note
end

class HoldingSimple
  include HappyMapper
  include ModsNamespace
  tag 'holdingSimple'

  has_many :copy_information, CopyInformation, tag: 'copyInformation'
end

class Location
  include HappyMapper
  include ModsNamespace
  tag 'location'

  #these elements should be ordered
  has_many :physical_location, PhysicalLocation, tag: 'physicalLocation'
  has_one :holding_simple, HoldingSimple, tag: 'holdingSimple'
end

class AccessCondition
  include HappyMapper
  include ModsNamespace
  tag 'accessCondition'

  attribute :type, String
  content :content, String
end

class Detail
  include HappyMapper
  include ModsNamespace
  tag 'detail'

  attribute :type, String
  has_many :number, String
end

class Part
  include HappyMapper
  include ModsNamespace
  tag 'part'

  attribute :type, String
  has_many :detail, Detail
end

class Extension
  include HappyMapper
  include ModsNamespace
  tag 'extension'

  attribute :display_label, String
  content :content, String
end

class RecordContentSource
  include HappyMapper
  include ModsNamespace
  tag 'recordContentSource'

  attribute :authority, String
  content :content, String
end

class RecordCreationDate
  include HappyMapper
  include ModsNamespace
  tag 'recordCreationDate'

  attribute :encoding, String
  attribute :point, String
  attribute :key_date, String, tag: 'keyDate'
  attribute :qualifier, String
  content :content, String
end

class RecordInfo
  include HappyMapper
  include ModsNamespace
  tag 'recordInfo'

  has_many :record_content_source, RecordContentSource, tag: 'recordContentSource'
  has_many :record_creation_date, RecordCreationDate, tag: 'recordCreationDate'
end

class ModsBase
  include HappyMapper
  include ModsNamespace

  attribute :id, String, tag: 'ID'
  has_many :title_info, TitleInfo, tag: 'titleInfo', xpath: '.'
  has_many :name, Name, xpath: '.'
  has_many :type_of_resource, TypeOfResource, tag: 'typeOfResource', xpath: '.'
  has_many :genre, Genre, xpath: '.'
  has_many :origin_info, OriginInfo, tag: 'originInfo', xpath: '.'
  has_many :language, Language, xpath: '.'
  has_many :physical_description, PhysicalDescription, tag: 'physicalDescription', xpath: '.'
  has_many :abstract, Abstract, xpath: '.'
  has_many :table_of_contents, TableOfContents, xpath: '.'
  has_many :target_audience, TargetAudience, xpath: '.'
  has_many :note, Note, xpath: '.'
  has_many :subject, Subject, xpath: '.'
  has_many :classification, Classification, xpath: '.'
  has_many :identifier, Identifier, xpath: '.'
  has_many :location, Location, xpath: '.'
  has_many :access_condition, AccessCondition, xpath: '.'
  has_many :part, Part, xpath: '.'
  has_many :extension, Extension, xpath: '.'
  has_many :record_info, RecordInfo, xpath: '.'
end

class RelatedItem < ModsBase
  include HappyMapper
  include ModsNamespace
  tag 'relatedItem'

  attribute :display_label, String, tag: 'displayLabel'
  attribute :type, String
end

class Mods < ModsBase
  include HappyMapper
  include ModsNamespace
  tag MODS_PREFIX

  attribute :version, String
  has_many :related_item, RelatedItem, xpath: '.'
end

class ModsCollection
  include HappyMapper
  include ModsNamespace
  tag 'modsCollection'

  has_many :mods, Mods
end

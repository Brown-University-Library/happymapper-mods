require 'happymapper'
require './lib/mods_dates'

class TitleInfo
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
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
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
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
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
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
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  tag 'placeTerm'

  attribute :type, String
  attribute :authority, String
  content :content, String
end
  
class Place
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  tag 'place'
 
  attribute :supplied, String
  has_many :place_term, PlaceTerm, tag: 'placeTerm'
end

class Publisher
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  tag 'publisher'

  attribute :supplied, String
  content :content, String
end
 

class Edition
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  tag 'edition'

  attribute :supplied, String
  content :content, String
end

class Frequency
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  tag 'frequency'

  attribute :authority, String
  content :content, String
end

class OriginInfo
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
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
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  tag 'namePart'

  attribute :type, String
  content :content, String
end

class RoleTerm
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  tag 'roleTerm'

  attribute :type, String
  attribute :authority, String
  content :content, String
end

class Role
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  tag 'role'

  has_many :role_term, RoleTerm, tag: 'roleTerm'
end

class Name
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
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
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  tag 'identifier'

  attribute :type, String
  attribute :display_label, String
  attribute :invalid, String
  content :content, String
end

class LanguageTerm
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  tag 'languageTerm'

  attribute :type, String
  attribute :authority, String
  content :content, String
end

class Language
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  tag 'language'

  attribute :object_part, String, tag: 'objectPart'
  has_many :language_term, LanguageTerm, tag: 'languageTerm'
end

class Form
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  tag 'form'
  
  attribute :authority, String
  attribute :type, String
  content :content, String
end

class Extent
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  tag 'extent'

  attribute :supplied, String
  content :content, String
end

class PhysicalDescription
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  tag 'physicalDescription'

  attribute :display_label, String, tag: 'displayLabel'
  has_many :form, Form
  has_many :extent, Extent
end

class Abstract
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  tag 'abstract'

  attribute :display_label, String, tag: 'displayLabel'
  attribute :type, String
  content :content, String
end

class Note
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  tag 'note'

  attribute :id, String, tag: 'ID'
  attribute :display_label, String, tag: 'displayLabel'
  content :content, String
end

class Temporal
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  tag 'temporal'

  attribute :authority, String
  attribute :encoding, String
  attribute :point, String
  attribute :key_date, String, tag: 'keyDate'
  attribute :qualifier, String
  content :content, String
end

class Subject
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  tag 'subject'

  attribute :id, String, tag: 'ID'
  attribute :authority, String
  attribute :display_label, String, tag: 'displayLabel'
  has_many :topic, String
  has_many :geographic, String
  has_many :temporal, Temporal
  has_many :title_info, TitleInfo, xpath: '.'
  has_many :name, Name, xpath: '.'
end

class ModsBase
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'

  attribute :id, String, tag: 'ID'
  has_many :title_info, TitleInfo, tag: 'titleInfo', xpath: '.'
  has_many :name, Name, xpath: '.'
  has_many :type_of_resource, TypeOfResource, tag: 'typeOfResource', xpath: '.'
  has_many :genre, Genre, xpath: '.'
  has_many :origin_info, OriginInfo, tag: 'originInfo', xpath: '.'
  has_many :language, Language, xpath: '.'
  has_many :physical_description, PhysicalDescription, tag: 'physicalDescription', xpath: '.'
  has_many :abstract, Abstract, xpath: '.'
  has_many :note, Note, xpath: '.'
  has_many :subject, Subject, xpath: '.'
  has_many :identifier, Identifier, xpath: '.'
end

class RelatedItem < ModsBase
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  tag 'relatedItem'

  attribute :display_label, String, tag: 'displayLabel'
  attribute :type, String
end

class Mods < ModsBase
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  tag 'mods'

  attribute :version, String
  has_many :related_item, RelatedItem, xpath: '.'
end

class ModsCollection
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  tag 'modsCollection'

  has_many :mods, Mods
end

require './lib/mods_namespaces'

module ModsDates

class ModsDate
  include HappyMapper
  register_namespace MODS_PREFIX, MODS_NS
  namespace MODS_PREFIX
  attribute :encoding, String
  attribute :point, String
  attribute :key_date, String, tag: 'keyDate'
  attribute :qualifier, String
  content :content, String
end

class DateIssued < ModsDate
  include HappyMapper
  register_namespace MODS_PREFIX, MODS_NS
  namespace MODS_PREFIX
  tag 'dateIssued'
end

class DateCreated < ModsDate
  include HappyMapper
  register_namespace MODS_PREFIX, MODS_NS
  namespace MODS_PREFIX
  tag 'dateCreated'
end

class DateCaptured < ModsDate
  include HappyMapper
  register_namespace MODS_PREFIX, MODS_NS
  namespace MODS_PREFIX
  tag 'dateCaptured'
end

class DateValid < ModsDate
  include HappyMapper
  register_namespace MODS_PREFIX, MODS_NS
  namespace MODS_PREFIX
  tag 'dateValid'
end

class DateModified < ModsDate
  include HappyMapper
  register_namespace MODS_PREFIX, MODS_NS
  namespace MODS_PREFIX
  tag 'dateModified'
end

class CopyrightDate < ModsDate
  include HappyMapper
  register_namespace MODS_PREFIX, MODS_NS
  namespace MODS_PREFIX
  tag 'copyrightDate'
end

class DateOther < ModsDate
  include HappyMapper
  register_namespace MODS_PREFIX, MODS_NS
  namespace MODS_PREFIX
  tag 'dateOther'
end

end

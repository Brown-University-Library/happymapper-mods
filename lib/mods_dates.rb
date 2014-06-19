module ModsDates

class ModsDate
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  attribute :encoding, String
  attribute :point, String
  attribute :key_date, String, tag: 'keyDate'
  attribute :qualifier, String
  content :content, String
end

class DateIssued < ModsDate
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  tag 'dateIssued'
end

class DateCreated < ModsDate
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  tag 'dateCreated'
end

class DateCaptured < ModsDate
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  tag 'dateCaptured'
end

class DateValid < ModsDate
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  tag 'dateValid'
end

class DateModified < ModsDate
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  tag 'dateModified'
end

class CopyrightDate < ModsDate
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  tag 'copyrightDate'
end

class DateOther < ModsDate
  include HappyMapper
  register_namespace 'mods', 'http://www.loc.gov/mods/v3'
  namespace 'mods'
  tag 'dateOther'
end

end

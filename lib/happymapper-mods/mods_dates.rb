require 'happymapper-mods/mods_namespaces'

module ModsDates

class ModsDate
  include HappyMapper
  include ModsNamespace
  attribute :encoding, String
  attribute :point, String
  attribute :key_date, String, tag: 'keyDate'
  attribute :qualifier, String
end

class DateIssued < ModsDate
  include HappyMapper
  include ModsNamespace
  tag 'dateIssued'
  content :content, String
end

class DateCreated < ModsDate
  include HappyMapper
  include ModsNamespace
  tag 'dateCreated'
  content :content, String
end

class DateCaptured < ModsDate
  include HappyMapper
  include ModsNamespace
  tag 'dateCaptured'
  content :content, String
end

class DateValid < ModsDate
  include HappyMapper
  include ModsNamespace
  tag 'dateValid'
  content :content, String
end

class DateModified < ModsDate
  include HappyMapper
  include ModsNamespace
  tag 'dateModified'
  content :content, String
end

class CopyrightDate < ModsDate
  include HappyMapper
  include ModsNamespace
  tag 'copyrightDate'
  content :content, String
end

class DateOther < ModsDate
  include HappyMapper
  include ModsNamespace
  tag 'dateOther'
  content :content, String
end

end

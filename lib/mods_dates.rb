require './lib/mods_namespaces'

module ModsDates

class ModsDate
  include HappyMapper
  include ModsNamespace
  attribute :encoding, String
  attribute :point, String
  attribute :key_date, String, tag: 'keyDate'
  attribute :qualifier, String
  content :content, String
end

class DateIssued < ModsDate
  include HappyMapper
  include ModsNamespace
  tag 'dateIssued'
end

class DateCreated < ModsDate
  include HappyMapper
  include ModsNamespace
  tag 'dateCreated'
end

class DateCaptured < ModsDate
  include HappyMapper
  include ModsNamespace
  tag 'dateCaptured'
end

class DateValid < ModsDate
  include HappyMapper
  include ModsNamespace
  tag 'dateValid'
end

class DateModified < ModsDate
  include HappyMapper
  include ModsNamespace
  tag 'dateModified'
end

class CopyrightDate < ModsDate
  include HappyMapper
  include ModsNamespace
  tag 'copyrightDate'
end

class DateOther < ModsDate
  include HappyMapper
  include ModsNamespace
  tag 'dateOther'
end

end

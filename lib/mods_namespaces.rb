MODS_PREFIX = 'mods'
MODS_NS = 'http://www.loc.gov/mods/v3'

module ModsNamespace
  def self.included(content)
    content.register_namespace MODS_PREFIX, MODS_NS
    content.namespace MODS_PREFIX
  end
end

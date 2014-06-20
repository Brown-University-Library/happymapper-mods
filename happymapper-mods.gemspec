Gem::Specification.new do |s|
  s.name        = 'happymapper-mods'
  s.version     = '0.0.1'
  s.date        = '2014-06-20'
  s.summary     = 'HappyMapper-Mods'
  s.description = 'Mods HappyMapper definition'
  s.authors     = ['Ben Cail']
  s.email       = ['benjamin_cail@brown.edu']
  s.files       = `git ls-files`.split("\n")
  s.homepage    = 'https://github.com/Brown-University-Library/happymapper-mods'
  s.license     = 'CC BY-SA 3.0'
  s.require_paths = ["lib"]
  s.add_dependency "nokogiri-happymapper"
end

# This file was generated by the `rspec --init` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# Require this file using `require "spec_helper"` to ensure that it is only
# loaded once.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'
end

def build_title_info
  title = TitleInfo.new
  title.title = 'Poétry'
  title
end

def build_name
  name = Name.new
  name.type = 'personal'
  name_part = NamePart.new
  name_part.content = 'Smith, Tom'
  name_part2 = NamePart.new
  name_part2.type = 'date'
  name_part2.content = '1803 or 4-1860'
  name.name_part = [name_part, name_part2]
  role = Role.new
  role_term = RoleTerm.new
  role_term.type = 'text'
  role_term.content = 'creator'
  role.role_term = role_term
  name.role = role
  name
end

def build_type_of_resource
  type_of_resource = TypeOfResource.new
  type_of_resource.content = 'text'
  type_of_resource
end

def build_genre
  genre = Genre.new
  genre.authority = 'aat'
  genre.content = 'aat theses'
  genre
end

def build_origin_info
  origin_info = OriginInfo.new
  origin_info.display_label = 'origin info'
  place = Place.new
  place_term = PlaceTerm.new
  place_term.content = 'USA'
  place.place_term = place_term
  origin_info.place = place
  date_issued = ModsDates::DateIssued.new
  date_issued.encoding = 'w3cdtf'
  date_issued.qualifier = 'questionable'
  date_issued.content = '2018-01'
  origin_info.date_issued = date_issued
  date_created = ModsDates::DateCreated.new
  date_created.encoding = 'w3cdtf'
  date_created.key_date = 'yes'
  date_created.content = '2008-02-03'
  origin_info.date_created = date_created
  origin_info
end

def build_language
  language = Language.new
  language_term = LanguageTerm.new
  language_term.type = "text"
  language_term.content = "xyz"
  language.language_term = language_term
  language
end

def build_physical_description
  phys_desc = PhysicalDescription.new
  extent = Extent.new
  extent.content = 'viii, 208 p.'
  phys_desc.extent = extent
  phys_desc.digital_origin = 'born digital'
  note = Note.new
  note.content = 'note 1'
  phys_desc.note = note
  phys_desc
end

def build_abstract
  abstract = Abstract.new
  abstract.content = 'Poétry description...'
  abstract
end

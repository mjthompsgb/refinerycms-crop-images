# Encoding: UTF-8

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-crop_images'
  s.version           = '0.0.1'
  s.authors           = ["Matt Thompson", "Chris Wise"]
  s.email             = ["mjthompsgb@gmail.com", "cwise@murmurinformatics.com"]
  s.description       = 'Ruby on Rails Image Cropping extension for Refinery CMS'
  s.date              = '2013-11-20'
  s.summary           = 'Image Cropping extension for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir["{app,config,db,lib}/**/*"] + ["readme.md"]

  # Runtime dependencies
  s.add_dependency             'refinerycms-core',    '~> 2.0.3'

  # Development dependencies (usually used for testing)
  s.add_development_dependency 'refinerycms-testing', '~> 2.0.3'
end

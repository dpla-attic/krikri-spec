$LOAD_PATH.push File.expand_path('../lib', __FILE__)

require 'krikri/spec/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'krikri-spec'
  s.version     = Krikri::Spec::VERSION
  s.authors     = ['Audrey Altman',
                   'Mark Breedlove',
                   'Tom Johnson',
                   'Mark Matienzo',
                   'Scott Williams']
  s.email       = ['tech@dp.la']
  s.homepage    = 'http://github.com/dpla/krikri-spec'
  s.summary     = "Shared tests for Krikri's metadata aggregation, " \
                  'enhancement, and quality control functionality.'
  s.description = 'Sharable test suite components for apps based on ' \
                  'the Krikri engine.'
  s.license     = 'MIT'

  s.files = Dir['lib/**/*', 'README.md']
  s.test_files = Dir['spec/**/*']

  s.add_dependency 'krikri'
  s.add_dependency 'rspec',  '~> 3.3'

  s.add_development_dependency 'yard'
end

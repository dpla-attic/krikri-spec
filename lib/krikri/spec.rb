##
# `Krikri::Spec` offers RSpec extensions and shared examples for the Krikri
# metadata aggregation engine.
#
# Shared examples must be required explictly for specs that use them. This helps
# with clarity of shared example use, and avoids namespace pollution for
# `it_behaves_like` directives.
#
# @example using a shared example
#   require 'krikri/spec/harvester'
#
#   describe MyHarvester do
#     it_behaves_like 'a harvester'
#   end
#
#
# RSpec matchers are included for common checks within Krikri based
# applications.
#
# @example using a custom matcher
#   require 'krikri/spec'
#
#   RSpec.configure { |conf| conf.include(Krikri::Spec::Matchers) }
#
#   describe SomeModel do
#     it 'is an exactMatch for moomin' do
#       moomin = RDF::URI('http://example.com/moomin')
#
#       expect(subject).to be_exact_match_with moomin
#     end
#   end
#
# @see http://www.rubydoc.info/gems/krikri
# @see http://rspec.info/
module Krikri::Spec
  autoload :Matchers, 'krikri/spec/matchers'
  autoload :VERSION,  'krikri/spec/version'
end

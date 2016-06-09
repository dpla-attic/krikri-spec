require 'rspec/matchers'

module Krikri::Spec
  ##
  # Defines matchers for Krikri 
  #
  # @see http://rubygems.org/gems/rspec
  # @see http://www.rubydoc.info/gems/rspec-expectations/RSpec/Matchers
  module Matchers

    # @!group ActiveTriples Matchers

    ##
    # Match on the `skos:exactMatch` relation.
    RSpec::Matchers.define :be_exact_match_with do |expected|
      match do |actual|
        exact_match = RDF::URI('http://www.w3.org/2004/02/skos/core#exactMatch')
        not actual.first([actual, exact_match, expected]).nil?
      end
    end

    ##
    # Match on the `dpla:providedLabel` relation.
    RSpec::Matchers.define :have_provided_label do |expected|
      match do |actual|
        provided_label = RDF::URI('http://dp.la/about/map/providedLabel')
        pattern = [actual, provided_label, nil]

        expect(actual.query(pattern).map(&:object)).to include(expected)
        true
      end
    end

    # @!endgroup
  end
end

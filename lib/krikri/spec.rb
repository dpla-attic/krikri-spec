##
# `Krikri::Spec` offers RSpec extensions and shared examples for the Krikri 
# metadata aggregation engine.
#
# Shared examples must be required explictly for specs that use them. This helps
# with clarity of shared example use, and avoids namespace pollution for 
# `it_behaves_like` directives.
# 
# @example
#   require 'krikri/spec/harvester'
#
#   describe MyHarvester do
#     it_behaves_like 'a harvester'
#   end
#
module Krikri::Spec
  autoload :VERSION, 'krikri/spec/version'

end

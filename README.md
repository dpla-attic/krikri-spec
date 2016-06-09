Krikri::Spec
============

RSpec extensions and shared examples for Krikri.

Shared Examples
----------------

Shared examples are included as linters for Krikri contracts. Use the shared
examples within individual spec files by invoking them in place:

```ruby
require 'krikri/spec/harvester'

describe MyHarvester do
  it_behaves_like 'a harvester'
end
```

Matchers
--------

Matchers for some common patterns within specs for Krikri apps are provided.
You can include them in your RSpec enviornment with:

```ruby
require 'krikri/spec

RSpec.configure do |conf|
  conf.include(Krikri::Spec::Matchers)
end
```

Development
-----------

When working on the Krikri gem, it is often useful to work directly against a
local copy of the `Krikri::Spec` examples. To do this, you can add a local path
to your Krikri Gemfile:

```ruby
# Gemfile

gem 'krikri-spec', path: '../krikri-spec'
```

Or run against the `develop` branch on GitHub:

```ruby
# Gemfile

gem 'krikri-spec', github: 'dpla/krikri-spec', branch: 'develop'
```

Contribution Guidelines
-----------------------
Please observe the following guidelines:

  - Write tests for your contributions.
  - Document methods you add using YARD annotations.
  - Follow the included style guidelines (i.e. run `rubocop` before committing).
  - Use well formed commit messages.

Copyright & License
--------------------

  - Copyright Digital Public Library of America, 2014-2015
  - License: MIT
  

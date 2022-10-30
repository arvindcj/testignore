# Testignore
*Used to gain file grained control over temporarily disabling Tests.*

## Install
```
  gem install testignore

  or

  gem 'testignore'
```

## Usage

```
require 'testignore'

# if no 'testignore_file' is specified, it defaults to '.testignore'
ignore = Testignore::File.new '/path .. to/testignore_file'

# Ignoring RSpec Tests.
ignore.rspec_ignore    

# Ignoring cucumber Tests.
ignore.cucumber_ignore
```

### RSpec Example

```
.testignore.yml

rspec: #place \# before rspec to deactivate testignore file.
  tags:
    - ignore_tag_one
    - ignore_tag_two

  files:
    - file01_spec.rb
    - file01_spec.rb

  class:
    - class01:method01
    - class02:method02
    - module01:method03
```

### Cucumber Example
```
.testignore.yml

cucumber: #place \# before cucumber to deactivate testignore file.

  tags: [tag01, tag02]

  files:
    - file01_spec.rb
    - file01_spec.rb

  class:
    - class01:method01
    - class02:method02
    - module01:method03
```

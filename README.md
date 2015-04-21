# Testignore
*Used to temporarily disable Tests*

## Usage

require 'testignore'

ignore = Testignore::File.new 'filename' # if no 'filename' is specified defaults to '.testignore' 

'filename' must be present outside any directory.

ignore.rspec_ignore_tags     # Ignoring RSpec Tests.
ignore.cucumber_ignore_tags  # Ignoring cucumber Tests.


### RSpec Example

```
.testignore.yml

rspec:
- tag: ignore_tag_one

- tag: ignore_tag_two
```

this will produce 
ignore.rspec_ignore_tags

--tags ~ignore_tag_one --tags ~ignore_tag_twos

### Cucumber Example
```
.testignore.yml

cucumber:
- tag1: ignore_tag_one  # ignore tag1 or tag2
  tag2: ignore_tag_two

- tag1: ignore_tag_three  # ignore (tag1 or tag2) and (tag1 or tag2)  
  tag2: ignore_tag_four
```
this will produce 
ignore.cucumber_ignore_tags

--tags ~ignore_tag_one,~ignore_tag_two --tags ~ignore_tag_three,~ignore_tag_four 

Usecase


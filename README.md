# Testignore
*Used to temporarily disable Tagged Tests.*

## Usage

```
require 'testignore'

# if no 'testignore_file' is specified, it defaults to '.testignore' 
ignore = Testignore::File.new 'testignore_file' 

# Ignoring RSpec Tests.
ignore.rspec_ignore_tags    

# Ignoring cucumber Tests.
ignore.cucumber_ignore_tags  
```
The 'testignore_file'  must be present outside any directory.

### RSpec Example

```
.testignore.yml

rspec:
- tag: ignore_tag_one

- tag: ignore_tag_two

# ignore.rspec_ignore_tags - will produce 
--tags ~ignore_tag_one --tags ~ignore_tag_two
```

### Cucumber Example
```
.testignore.yml

cucumber:
- tag1: ignore_tag_one  # ignore tag1 or tag2
  tag2: ignore_tag_two

- tag1: ignore_tag_three  # ignore (tag1 or tag2) and (tag1 or tag2)  
  tag2: ignore_tag_four

# ignore.cucumber_ignore_tags - will produce 
--tags ~ignore_tag_one,~ignore_tag_two --tags ~ignore_tag_three,~ignore_tag_four 
```




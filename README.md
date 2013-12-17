# DVR [![Build Status](https://travis-ci.org/kconarro14/dvr.png?branch=master)](https://travis-ci.org/kconarro14/dvr) [![Gem Version](https://badge.fury.io/rb/dvr.png)](http://badge.fury.io/rb/dvr)

DVR makes it easy to mimic your Rails API backend by generating a fake server using recorded HTTP responses.

The goals of DVR are as follows:

* Ease API client testing for Rails API backends
* Simplify keeping client testing synchronized with changes to the backend

A nice side effect of using DVR is that it relies on recorded API responses (for now, in the form of [rspec-api-documentation](https://github.com/zipmark/rspec_api_documentation) docs).

## Installation & Usage
``` bash
    $ gem install dvr
    $ dvr record 'path/to/my_rails_app/rspec-api-documentation' # supports relative path
    $ dvr play 'path/to/recorded/dvr/server.rb'                 # supports relative path
```
*Note that this is a command-line tool that doesn't need to be in your Gemfile.

### Recording Options
``` bash
  -n, [--filename=FILENAME]                 # The name for the recorded server file. Defaults to dvr_server.rb
  -f, [--episode-format=EPISODE_FORMAT]     # The format of the provided files. Defaults to rspec-api-documentation
  -s, [--episode-source=EPISODE_SOURCE]     # The source of the JSON files. Defaults to file system
  -d, [--destination=DESTINATION]           # The destination for the recorded server file. Defaults to pwd/dvr
  -a, [--auto-create-directories]           # Flag to auto create destination directories. Defaults to true
```
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

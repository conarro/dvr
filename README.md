# DVR

DVR makes it easy to mimic your Rails API backend by generating a fake server using recorded HTTP responses.

The goals of DVR are as follows:

* Ease API client testing for Rails API backends
* Simplify keeping client testing synchronized with changes to the backend

A nice side effect of using DVR is that it relies on recorded API responses (for now, in the form of [rspec-api-documentation](https://github.com/zipmark/rspec_api_documentation) docs).

## Installation & Usage
``` bash
    $ gem install dvr
    $ dvr record --episode-location '/absolute/path/to/rspec-api-documentation'
```
*Note that this is a command-line tool that doesn't need to be in your Gemfile.

### Options
``` bash
  -l, [--episode-location=EPISODE_LOCATION] # The location of the recorded HTTP responses
  -n, [--filename=FILENAME]                 # The name for the recorded server file
  -f, [--episode-format=EPISODE_FORMAT]     # The format of the provided files
  -s, [--episode-source=EPISODE_SOURCE]     # The source of the JSON files
  -l, --episode-location=EPISODE_LOCATION   # The location of the JSON files to record
  -d, [--destination=DESTINATION]           # The destination for the recorded server file
```
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

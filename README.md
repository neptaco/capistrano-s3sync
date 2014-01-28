# Capistrano::S3sync

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'capistrano-s3sync'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-s3sync

## Usage

capistrano task:

    $ cap staging s3:sync

```ruby
set :aws_access_key_id, '[aws access key]'
set :aws_access_secret_key, '[aws secret key]'
set :s3sync_endpoint, 's3-ap-northeast-1.amazonaws.com'

set :s3sync_src, "[src dir]"
set :s3sync_dst, "[bucket name]:[dst dir]"
```

### Capistrano Variables

|variable_name|description|
|-----|------|
|aws_access_key_id|AWS Access Key|
|aws_access_secret_key|AWS Secret Key
|s3sync_endpoint|S3 Endpoint URL|
|s3sync_src|S3 Source
|s3sync_dst|S3 Destination


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

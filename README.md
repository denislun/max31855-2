# Max31855

Max31855 thermocouple sensor library.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'max31855'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install max31855

## Usage

### Initialization

Initialize Max31855 class with device path and clock speed.

```ruby
sensor = Max31855.new "/dev/spidev0.0", 4000000
```

By default, device path is "/dev/spidev0.0" and clock speed is 4000000.
So you can initialize simply:

```ruby
sensor = Max31855.new
```

or

```ruby
sensor = Max31855.new "/dev/spidev0.1"
```

### Get the temperature

The instance of Max31855 class has one method named 'fetch'.
This method returns 2 float values. First one is thermocouple sensor temperature, and second one is internal temperature of MAX31855 chip.

When you want to get current temperature, call 'fetch' method of the instance:

```ruby
thermocouple, internal = sensor.fetch
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/mzyy94/max31855/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
